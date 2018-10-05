import numpy as np
#Here I am going to try to write some algorithms for cumulative:
# 1. mean
# 2. variance
# 3. standard deviation

X = [3.,9.,5.,2.,1.,7.,6.,8.,4.,10.]
X = np.array(X)

print( X )
print("mean  variance   standard deviation")
print( np.mean(X),np.var(X),np.std(X) )

mean,mos,som=0,0,0

# cumulative mean (CM) equation:
# CM_n+1  =  [ (CM_n * n) + X_n+1 ]   /   (n+1)
#
# CM_n  =  previous cumulative mean
# CM_n+1=  current cumulative mean
# X_n+1 =  current value to compute mean of
#
# Take aways for python coding:
#    when n is the index it acts as n+1 (the current index)
#    when n is not an index it acts as n (the previous index)
#    this is because python index starts at 0

for n in range(len(X)):
    mean = (mean*n + X[n]   )/ (n+1) #cumulative mean
    mos  = ( mos*n + X[n]**2)/ (n+1) #cumulative mean of squares
    som  = mean**2                   #cumulative square of mean
    var  = mos - som                 #cumulative variance
    std  = np.sqrt(var)              #cumulative standard deviation

print(mean,var,std)
