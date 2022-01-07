
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int swab (int const*,void*,unsigned int) ;

__attribute__((used)) static void S16IDecode( void *out, const uint8_t *in, unsigned samples )
{
    swab( in, out, samples * 2 );
}
