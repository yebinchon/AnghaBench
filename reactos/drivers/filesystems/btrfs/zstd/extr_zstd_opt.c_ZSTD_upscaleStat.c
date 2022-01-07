
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t U32 ;


 int ZSTD_FREQ_DIV ;
 int assert (int) ;

__attribute__((used)) static U32 ZSTD_upscaleStat(U32* table, U32 lastEltIndex, int bonus)
{
    U32 s, sum=0;
    assert(ZSTD_FREQ_DIV+bonus > 0);
    for (s=0; s<=lastEltIndex; s++) {
        table[s] <<= ZSTD_FREQ_DIV+bonus;
        table[s]--;
        sum += table[s];
    }
    return sum;
}
