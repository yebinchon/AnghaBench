
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EINVAL ;
 int errno ;
 int free (unsigned char*) ;
 int hpack_decode_byte_huffman (int const*,int*) ;
 unsigned char* malloc (size_t) ;

__attribute__((used)) static char *hpack_decode_str_huffman(const uint8_t *data, size_t length)
{
    unsigned char *str = malloc(length * 2 + 1);
    if (str == ((void*)0))
        return ((void*)0);

    size_t len = 0;
    int bit_offset = -8 * length;
    data += length;

    for (;;)
    {
        int c = hpack_decode_byte_huffman(data, &bit_offset);
        if (c < 0)
        {
            errno = EINVAL;
            goto error;
        }


        str[len++] = c;

        if (c == 256)
            break;
    }

    return (char *)str;

error:
    free(str);
    return ((void*)0);
}
