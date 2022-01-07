
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int RAND (int*) ;

__attribute__((used)) static inline U32 RAND_range(U32* seed, U32 min, U32 max)
{
    return (RAND(seed) % (max-min)) + min;
}
