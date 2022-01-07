
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_3__ {int * vals; } ;
typedef TYPE_1__ paramValues_t ;


 scalar_t__ invRangeMap (size_t const,int ) ;
 int rangeMap (size_t const,scalar_t__) ;

__attribute__((used)) static void
paramVaryOnce(const varInds_t paramIndex, const int amt, paramValues_t* ptr)
{
    ptr->vals[paramIndex] = rangeMap(paramIndex,
                                     invRangeMap(paramIndex, ptr->vals[paramIndex]) + amt);
}
