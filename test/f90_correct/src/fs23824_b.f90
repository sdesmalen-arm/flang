! Copyright (c) 2018, NVIDIA CORPORATION.  All rights reserved.
!
! Licensed under the Apache License, Version 2.0 (the "License");
! you may not use this file except in compliance with the License.
! You may obtain a copy of the License at
!
!     http://www.apache.org/licenses/LICENSE-2.0
!
! Unless required by applicable law or agreed to in writing, software
! distributed under the License is distributed on an "AS IS" BASIS,
! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
! See the License for the specific language governing permissions and
! limitations under the License.

module test_module
use, intrinsic :: iso_c_binding, only: &
  c_ptr, &
  c_loc
implicit none
private :: c_ptr
private :: c_loc

contains 
subroutine test_c_loc(value,cptr)
  integer, target :: value
  type(c_ptr) :: cptr
  cptr = c_loc(value)
end subroutine

end module