
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast8_t ;
typedef int uint_fast32_t ;
typedef int uint_fast16_t ;


 char* malloc (size_t) ;
 scalar_t__ unlikely (int ) ;

char *vlc_b64_encode_binary(const void *src, size_t length)
{
    static const char b64[] =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    const unsigned char *in = src;
    char *dst = malloc((((length + 2) / 3) * 4) + 1);
    char *out = dst;

    if (unlikely(dst == ((void*)0)))
        return ((void*)0);

    while (length >= 3) {
        uint_fast32_t v = (in[0] << 16) | (in[1] << 8) | in[2];

        *(out++) = b64[(v >> 18)];
        *(out++) = b64[(v >> 12) & 0x3f];
        *(out++) = b64[(v >> 6) & 0x3f];
        *(out++) = b64[(v >> 0) & 0x3f];
        in += 3;
        length -= 3;
    }

    switch (length) {
        case 2: {
            uint_fast16_t v = (in[0] << 8) | in[1];

            *(out++) = b64[(v >> 10)];
            *(out++) = b64[(v >> 4) & 0x3f];
            *(out++) = b64[(v << 2) & 0x3f];
            *(out++) = '=';
            break;
        }

        case 1: {
            uint_fast8_t v = in[0];

            *(out++) = b64[(v >> 2)];
            *(out++) = b64[(v << 4) & 0x3f];
            *(out++) = '=';
            *(out++) = '=';
            break;
        }
    }

    *out = '\0';
    return dst;
}
