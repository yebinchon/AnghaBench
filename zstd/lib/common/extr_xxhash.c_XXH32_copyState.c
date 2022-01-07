
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XXH32_state_t ;


 int memcpy (int *,int const*,int) ;

void XXH32_copyState(XXH32_state_t* restrict dstState, const XXH32_state_t* restrict srcState)
{
    memcpy(dstState, srcState, sizeof(*dstState));
}
