
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;


 int MAP_COMPOSITE ;
 int MAP_EXPAND_LIGATURES ;
 int MAP_FOLDCZONE ;
 int MAP_FOLDDIGITS ;
 int MAP_PRECOMPOSED ;
 scalar_t__* get_ligature (scalar_t__) ;
 scalar_t__ get_ligature_len (scalar_t__ const) ;
 int strlenW (scalar_t__ const*) ;
 scalar_t__ to_unicode_digit (scalar_t__) ;
 scalar_t__ to_unicode_native (scalar_t__) ;

int wine_fold_string( int flags, const WCHAR *src, int srclen, WCHAR *dst, int dstlen )
{
    WCHAR *dstbase = dst;
    const WCHAR *expand;
    int i;

    if (srclen == -1)
        srclen = strlenW(src) + 1;

    if (!dstlen)
    {

        dstlen = srclen;

        if (flags & MAP_EXPAND_LIGATURES)
        {
            while (srclen--)
            {
                dstlen += get_ligature_len(*src);
                src++;
            }
        }
        else if (flags & MAP_COMPOSITE)
        {

        }
        else if (flags & MAP_PRECOMPOSED)
        {

        }
        return dstlen;
    }

    if (srclen > dstlen)
        return 0;

    dstlen -= srclen;


    for (i = 0; i < srclen; i++)
    {
        WCHAR ch = *src;

        if (flags & MAP_EXPAND_LIGATURES)
        {
            expand = get_ligature(ch);
            if (expand[0])
            {
                if (!dstlen--)
                    return 0;
                dst[0] = expand[0];
                if (expand[2])
                {
                    if (!dstlen--)
                        return 0;
                    *++dst = expand[1];
                    ch = expand[2];
                }
                else
                    ch = expand[1];
                dst++;
            }
        }
        else if (flags & MAP_COMPOSITE)
        {

        }
        else if (flags & MAP_PRECOMPOSED)
        {

        }
        if (flags & MAP_FOLDDIGITS)
            ch = to_unicode_digit(ch);
        if (flags & MAP_FOLDCZONE)
            ch = to_unicode_native(ch);

        *dst++ = ch;
        src++;
    }
    return dst - dstbase;
}
