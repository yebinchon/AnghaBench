
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_3__ {int * vals; } ;
typedef TYPE_1__ paramValues_t ;


 scalar_t__ invRangeMap (size_t,int ) ;
 unsigned int* rangetable ;
 size_t strt_ind ;

__attribute__((used)) static unsigned memoTableIndDirect(const paramValues_t* ptr, const varInds_t* varyParams, const size_t varyLen) {
    size_t i;
    unsigned ind = 0;
    for(i = 0; i < varyLen; i++) {
        varInds_t v = varyParams[i];
        if(v == strt_ind) continue;
        ind *= rangetable[v]; ind += (unsigned)invRangeMap(v, ptr->vals[v]);
    }
    return ind;
}
