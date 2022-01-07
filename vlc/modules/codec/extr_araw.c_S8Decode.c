
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void S8Decode( void *outp, const uint8_t *in, unsigned samples )
{
    uint8_t *out = outp;

    for( size_t i = 0; i < samples; i++ )
        out[i] = in[i] ^ 0x80;
}
