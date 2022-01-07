
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int WC_ERR_INVALID_CHARS ;
 int get_length_wcs_utf8 (int,int const*,int) ;
 unsigned int get_surrogate_value (int const*,int) ;

int wine_utf8_wcstombs( int flags, const WCHAR *src, int srclen, char *dst, int dstlen )
{
    int len;

    if (!dstlen) return get_length_wcs_utf8( flags, src, srclen );

    for (len = dstlen; srclen; srclen--, src++)
    {
        WCHAR ch = *src;
        unsigned int val;

        if (ch < 0x80)
        {
            if (!len--) return -1;
            *dst++ = ch;
            continue;
        }

        if (ch < 0x800)
        {
            if ((len -= 2) < 0) return -1;
            dst[1] = 0x80 | (ch & 0x3f);
            ch >>= 6;
            dst[0] = 0xc0 | ch;
            dst += 2;
            continue;
        }

        if (!(val = get_surrogate_value( src, srclen )))
        {
            if (flags & WC_ERR_INVALID_CHARS) return -2;
            continue;
        }

        if (val < 0x10000)
        {
            if ((len -= 3) < 0) return -1;
            dst[2] = 0x80 | (val & 0x3f);
            val >>= 6;
            dst[1] = 0x80 | (val & 0x3f);
            val >>= 6;
            dst[0] = 0xe0 | val;
            dst += 3;
        }
        else
        {
            if ((len -= 4) < 0) return -1;
            dst[3] = 0x80 | (val & 0x3f);
            val >>= 6;
            dst[2] = 0x80 | (val & 0x3f);
            val >>= 6;
            dst[1] = 0x80 | (val & 0x3f);
            val >>= 6;
            dst[0] = 0xf0 | val;
            dst += 4;
            src++;
            srclen--;
        }
    }
    return dstlen - len;
}
