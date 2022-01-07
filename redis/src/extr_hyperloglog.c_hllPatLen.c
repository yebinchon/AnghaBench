
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int HLL_P ;
 int HLL_P_MASK ;
 int HLL_Q ;
 int MurmurHash64A (unsigned char*,size_t,int) ;

int hllPatLen(unsigned char *ele, size_t elesize, long *regp) {
    uint64_t hash, bit, index;
    int count;
    hash = MurmurHash64A(ele,elesize,0xadc83b19ULL);
    index = hash & HLL_P_MASK;
    hash >>= HLL_P;
    hash |= ((uint64_t)1<<HLL_Q);

    bit = 1;
    count = 1;
    while((hash & bit) == 0) {
        count++;
        bit <<= 1;
    }
    *regp = (int) index;
    return count;
}
