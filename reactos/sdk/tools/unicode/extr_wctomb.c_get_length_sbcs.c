
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbcs_table {unsigned char* uni2cp_low; unsigned short* uni2cp_high; } ;
typedef int WCHAR ;


 int WC_COMPOSITECHECK ;
 int WC_DEFAULTCHAR ;
 int WC_DISCARDNS ;
 scalar_t__ is_valid_sbcs_mapping (struct sbcs_table const*,int,int,unsigned char) ;
 int wine_compose (int const*) ;

__attribute__((used)) static int get_length_sbcs( const struct sbcs_table *table, int flags,
                            const WCHAR *src, unsigned int srclen, int *used )
{
    const unsigned char * const uni2cp_low = table->uni2cp_low;
    const unsigned short * const uni2cp_high = table->uni2cp_high;
    int ret, tmp;
    WCHAR composed;

    if (!used) used = &tmp;
    *used = 0;

    for (ret = 0; srclen; ret++, src++, srclen--)
    {
        WCHAR wch = *src;
        unsigned char ch;

        if ((flags & WC_COMPOSITECHECK) && (srclen > 1) && (composed = wine_compose(src)))
        {

            ch = uni2cp_low[uni2cp_high[composed >> 8] + (composed & 0xff)];
            if (is_valid_sbcs_mapping( table, flags, composed, ch ))
            {

                src++;
                srclen--;
                continue;
            }

            if (flags & WC_DEFAULTCHAR)
            {
                *used = 1;
                src++;
                srclen--;
                continue;
            }
            if (flags & WC_DISCARDNS)
            {
                src++;
                srclen--;
            }

        }
        if (!*used)
        {
            ch = uni2cp_low[uni2cp_high[wch >> 8] + (wch & 0xff)];
            *used = !is_valid_sbcs_mapping( table, flags, wch, ch );
        }
    }
    return ret;
}
