
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vals; } ;
typedef TYPE_1__ paramValues_t ;
typedef size_t U32 ;


 size_t NUM_PARAMS ;
 int PARAM_UNSET ;

__attribute__((used)) static paramValues_t emptyParams(void)
{
    U32 i;
    paramValues_t p;
    for(i = 0; i < NUM_PARAMS; i++) {
        p.vals[i] = PARAM_UNSET;
    }
    return p;
}
