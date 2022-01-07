
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int randnum ;


 int randombytes (int *,int) ;

uint64_t random_64b(void)
{
    uint64_t randnum;
    randombytes((uint8_t *)&randnum, sizeof(randnum));
    return randnum;
}
