
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_3__ {int * vals; } ;
typedef TYPE_1__ paramValues_t ;


 int FUZ_rand (int *) ;
 size_t NUM_PARAMS ;
 int g_rand ;
 int rangeMap (size_t,int) ;
 int* rangetable ;

__attribute__((used)) static paramValues_t randomParams(void)
{
    varInds_t v; paramValues_t p;
    for(v = 0; v < NUM_PARAMS; v++) {
        p.vals[v] = rangeMap(v, (int)(FUZ_rand(&g_rand) % rangetable[v]));
    }
    return p;
}
