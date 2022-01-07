
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* vals; } ;
typedef TYPE_1__ paramValues_t ;
typedef size_t U32 ;


 size_t NUM_PARAMS ;
 scalar_t__ PARAM_UNSET ;

__attribute__((used)) static paramValues_t
overwriteParams(paramValues_t base, const paramValues_t mask)
{
    U32 i;
    for(i = 0; i < NUM_PARAMS; i++) {
        if(mask.vals[i] != PARAM_UNSET) {
            base.vals[i] = mask.vals[i];
        }
    }
    return base;
}
