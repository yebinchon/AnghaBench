
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t varInds_t ;


 size_t* rangetable ;
 size_t const strt_ind ;

__attribute__((used)) static size_t memoTableLen(const varInds_t* varyParams, const size_t varyLen) {
    size_t arrayLen = 1;
    size_t i;
    for(i = 0; i < varyLen; i++) {
        if(varyParams[i] == strt_ind) continue;
        arrayLen *= rangetable[varyParams[i]];
    }
    return arrayLen;
}
