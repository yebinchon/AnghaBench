
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;



__attribute__((used)) static U32 FUZ_rotl32(U32 x, U32 r)
{
    return ((x << r) | (x >> (32 - r)));
}
