
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int MB_COMPOSITE ;
 int MB_ERR_INVALID_CHARS ;
 unsigned int decode_utf8_char (unsigned char,char const**,char const*) ;
 int get_length_mbs_utf8 (int,char const*,int) ;
 int utf8_mbstowcs_compose (int,char const*,int,int *,int) ;

int wine_utf8_mbstowcs( int flags, const char *src, int srclen, WCHAR *dst, int dstlen )
{
    unsigned int res;
    const char *srcend = src + srclen;
    WCHAR *dstend = dst + dstlen;

    if (flags & MB_COMPOSITE) return utf8_mbstowcs_compose( flags, src, srclen, dst, dstlen );

    if (!dstlen) return get_length_mbs_utf8( flags, src, srclen );

    while ((dst < dstend) && (src < srcend))
    {
        unsigned char ch = *src++;
        if (ch < 0x80)
        {
            *dst++ = ch;
            continue;
        }
        if ((res = decode_utf8_char( ch, &src, srcend )) <= 0xffff)
        {
            *dst++ = res;
        }
        else if (res <= 0x10ffff)
        {
            if (dst == dstend - 1) return -1;
            res -= 0x10000;
            *dst++ = 0xd800 | (res >> 10);
            *dst++ = 0xdc00 | (res & 0x3ff);
        }
        else if (flags & MB_ERR_INVALID_CHARS) return -2;

    }
    if (src < srcend) return -1;
    return dstlen - (dstend - dst);
}
