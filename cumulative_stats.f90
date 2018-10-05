program cumulative_stats

!Here I am going to try to write some algorithms for cumulative:
! 1. mean
! 2. variance
! 3. standard deviation

implicit none

real :: X(10) = (/3.,9.,5.,2.,1.,7.,6.,8.,4.,10./)
real :: mean,mos,som,var,std
integer :: n

write(6,*) X
write(6,*) "mean      variance      standard deviation"

mean=0
mos=0
som=0

! cumulative mean (CM) equation:
! CM_n+1  =  [ (CM_n * n) + X_n+1 ]   /   (n+1)
!
! CM_n  =  previous cumulative mean
! CM_n+1=  current cumulative mean
! X_n+1 =  current value to compute mean of
!
! Take aways for python coding:
!    when n is the index it acts as n+1 (the current index)
!    when n is not an index it acts as n (the previous index)
!    this is because python index starts at 0
! Take aways for fortran coding:
!    when n is the index it acts as n (the previous index)
!    when n is not an index it acts as n (the previous index)
!    this is because fortran index starts at 1

!do n=0,size(X)-1
do n=1,size(X)
   mean = (mean*(n-1) + X(n)   )/ (n) !cumulative mean
   mos  = ( mos*(n-1) + X(n)**2)/ (n) !cumulative mean of squares
   som  = mean**2                     !cumulative square of mean
   var  = mos - som                   !cumulative variance
   std  = sqrt(var)                !cumulative standard deviation

end do
write(6,*) mean,var,std


end program
