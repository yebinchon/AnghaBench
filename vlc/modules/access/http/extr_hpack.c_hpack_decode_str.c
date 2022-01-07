
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int_fast32_t ;


 int EINVAL ;
 int ERANGE ;
 int errno ;
 int hpack_decode_int (int,int const**,size_t*) ;
 char* hpack_decode_str_huffman (int const*,int) ;
 char* hpack_decode_str_raw (int const*,int) ;
 char* stub1 (int const*,int) ;

__attribute__((used)) static char *hpack_decode_str(const uint8_t **restrict datap,
                              size_t *restrict lengthp)
{
    if (*lengthp < 1)
    {
        errno = EINVAL;
        return ((void*)0);
    }

    bool huffman = ((*datap)[0] & 0x80) != 0;
    int_fast32_t len = hpack_decode_int(7, datap, lengthp);
    if (len < 0)
        return ((void*)0);

    if ((size_t)len > *lengthp)
    {
        errno = EINVAL;
        return ((void*)0);
    }

    if (len > 65535)
    {
        errno = ERANGE;
        return ((void*)0);
    }

    const uint8_t *buf = *datap;

    *datap += len;
    *lengthp -= len;

    return (huffman ? hpack_decode_str_huffman : hpack_decode_str_raw)
            (buf, len);
}
