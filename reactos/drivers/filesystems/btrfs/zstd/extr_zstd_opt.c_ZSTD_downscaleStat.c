
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t U32 ;


 int ZSTD_FREQ_DIV ;
 int assert (int) ;

__attribute__((used)) static U32 ZSTD_downscaleStat(U32* table, U32 lastEltIndex, int malus)
{
    U32 s, sum=0;
    assert(ZSTD_FREQ_DIV+malus > 0 && ZSTD_FREQ_DIV+malus < 31);
    for (s=0; s<=lastEltIndex; s++) {
        table[s] = 1 + (table[s] >> (ZSTD_FREQ_DIV+malus));
        sum += table[s];
    }
    return sum;
}
