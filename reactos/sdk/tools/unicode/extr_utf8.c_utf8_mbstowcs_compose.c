
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int MB_ERR_INVALID_CHARS ;
 unsigned int decode_utf8_char (unsigned char,char const**,char const*) ;
 int get_length_mbs_utf8_compose (int,char const*,int) ;
 char wine_compose (char*) ;

__attribute__((used)) static int utf8_mbstowcs_compose( int flags, const char *src, int srclen, WCHAR *dst, int dstlen )
{
    unsigned int res;
    const char *srcend = src + srclen;
    WCHAR composed[2];
    WCHAR *dstend = dst + dstlen;

    if (!dstlen) return get_length_mbs_utf8_compose( flags, src, srclen );

    composed[0] = 0;
    while (src < srcend)
    {
        unsigned char ch = *src++;
        if (ch < 0x80)
        {
            if (dst >= dstend) return -1;
            *dst++ = composed[0] = ch;
            continue;
        }
        if ((res = decode_utf8_char( ch, &src, srcend )) <= 0xffff)
        {
            if (composed[0])
            {
                composed[1] = res;
                if ((composed[0] = wine_compose( composed )))
                {
                    dst[-1] = composed[0];
                    continue;
                }
            }
            if (dst >= dstend) return -1;
            *dst++ = composed[0] = res;
        }
        else if (res <= 0x10ffff)
        {
            if (dst >= dstend - 1) return -1;
            res -= 0x10000;
            *dst++ = 0xd800 | (res >> 10);
            *dst++ = 0xdc00 | (res & 0x3ff);
            composed[0] = 0;
        }
        else if (flags & MB_ERR_INVALID_CHARS) return -2;

    }
    return dstlen - (dstend - dst);
}
