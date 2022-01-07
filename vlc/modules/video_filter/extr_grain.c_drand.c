
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ UINT32_MAX ;
 double urand (int *) ;

__attribute__((used)) static double drand(uint32_t *seed)
{
    return urand(seed) / (double)UINT32_MAX;
}
