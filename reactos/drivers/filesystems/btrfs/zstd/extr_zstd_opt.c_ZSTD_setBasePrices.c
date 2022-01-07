
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offCodeSum; void* offCodeSumBasePrice; int matchLengthSum; void* matchLengthSumBasePrice; int litLengthSum; void* litLengthSumBasePrice; int litSum; void* litSumBasePrice; } ;
typedef TYPE_1__ optState_t ;


 void* WEIGHT (int ,int) ;

__attribute__((used)) static void ZSTD_setBasePrices(optState_t* optPtr, int optLevel)
{
    optPtr->litSumBasePrice = WEIGHT(optPtr->litSum, optLevel);
    optPtr->litLengthSumBasePrice = WEIGHT(optPtr->litLengthSum, optLevel);
    optPtr->matchLengthSumBasePrice = WEIGHT(optPtr->matchLengthSum, optLevel);
    optPtr->offCodeSumBasePrice = WEIGHT(optPtr->offCodeSum, optLevel);
}
