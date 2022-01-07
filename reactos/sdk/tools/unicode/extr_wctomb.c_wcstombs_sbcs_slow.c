
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int def_char; } ;
struct sbcs_table {unsigned char* uni2cp_low; unsigned short* uni2cp_high; TYPE_1__ info; } ;
typedef int WCHAR ;


 int WC_COMPOSITECHECK ;
 int WC_DEFAULTCHAR ;
 int WC_DISCARDNS ;
 scalar_t__ is_valid_sbcs_mapping (struct sbcs_table const*,int,int,char) ;
 int wine_compose (int const*) ;

__attribute__((used)) static int wcstombs_sbcs_slow( const struct sbcs_table *table, int flags,
                               const WCHAR *src, unsigned int srclen,
                               char *dst, unsigned int dstlen,
                               const char *defchar, int *used )
{
    const unsigned char * const uni2cp_low = table->uni2cp_low;
    const unsigned short * const uni2cp_high = table->uni2cp_high;
    unsigned char def;
    unsigned int len;
    int tmp;
    WCHAR composed;

    if (!defchar)
        def = table->info.def_char & 0xff;
    else
        def = *defchar;

    if (!used) used = &tmp;
    *used = 0;

    for (len = dstlen; srclen && len; dst++, len--, src++, srclen--)
    {
        WCHAR wch = *src;

        if ((flags & WC_COMPOSITECHECK) && (srclen > 1) && (composed = wine_compose(src)))
        {

            *dst = uni2cp_low[uni2cp_high[composed >> 8] + (composed & 0xff)];
            if (is_valid_sbcs_mapping( table, flags, composed, *dst ))
            {

                src++;
                srclen--;
                continue;
            }

            if (flags & WC_DEFAULTCHAR)
            {
                *dst = def;
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

        *dst = uni2cp_low[uni2cp_high[wch >> 8] + (wch & 0xff)];
        if (!is_valid_sbcs_mapping( table, flags, wch, *dst ))
        {
            *dst = def;
            *used = 1;
        }
    }
    if (srclen) return -1;
    return dstlen - len;
}
