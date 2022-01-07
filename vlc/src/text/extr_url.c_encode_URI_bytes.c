
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isurisafe (unsigned char) ;
 scalar_t__ likely (int ) ;
 char* malloc (int) ;
 char* realloc (char*,size_t) ;
 scalar_t__ unlikely (int ) ;
 void** urihex ;

__attribute__((used)) static char *encode_URI_bytes (const char *str, size_t *restrict lenp)
{
    char *buf = malloc (3 * *lenp + 1);
    if (unlikely(buf == ((void*)0)))
        return ((void*)0);

    char *out = buf;
    for (size_t i = 0; i < *lenp; i++)
    {
        unsigned char c = str[i];

        if (isurisafe (c))
            *(out++) = c;


        else
        {
            *(out++) = '%';
            *(out++) = urihex[c >> 4];
            *(out++) = urihex[c & 0xf];
        }
    }

    *lenp = out - buf;
    out = realloc (buf, *lenp + 1);
    return likely(out != ((void*)0)) ? out : buf;
}
