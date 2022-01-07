
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int byte ;


 int get_int16 (int const*) ;

int16_t
jbig2_get_int16(const byte *bptr)
{
    return get_int16(bptr);
}
