
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 unsigned int CHAR_BIT ;
 unsigned int RAND_MAX ;
 int UINT_MAX ;
 unsigned int nRandBytes ;
 int srand (unsigned int) ;
 int time (int *) ;

__attribute__((used)) static int initrand(void)
{
    unsigned int nRandMax;
    unsigned int nRandMaxBits;
    time_t tLoc;

    nRandMax = RAND_MAX;
    for(nRandMaxBits = 0; nRandMax != 0; nRandMax >>= 1, ++ nRandMaxBits);
    nRandBytes = nRandMaxBits / CHAR_BIT;

    srand((unsigned)(time(&tLoc) & UINT_MAX));
    return 1;
}
