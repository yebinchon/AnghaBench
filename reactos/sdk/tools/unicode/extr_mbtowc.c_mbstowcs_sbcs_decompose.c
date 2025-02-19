
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbcs_table {int * cp2uni; int * cp2uni_glyphs; } ;
typedef int WCHAR ;


 int MB_USEGLYPHCHARS ;
 unsigned int wine_decompose (int const,int *,unsigned int) ;

__attribute__((used)) static int mbstowcs_sbcs_decompose( const struct sbcs_table *table, int flags,
                                    const unsigned char *src, unsigned int srclen,
                                    WCHAR *dst, unsigned int dstlen )
{
    const WCHAR * const cp2uni = (flags & MB_USEGLYPHCHARS) ? table->cp2uni_glyphs : table->cp2uni;
    unsigned int len;

    if (!dstlen)
    {
        WCHAR dummy[4];
        for (len = 0; srclen; srclen--, src++)
            len += wine_decompose( cp2uni[*src], dummy, 4 );
        return len;
    }

    for (len = dstlen; srclen && len; srclen--, src++)
    {
        unsigned int res = wine_decompose( cp2uni[*src], dst, len );
        if (!res) break;
        len -= res;
        dst += res;
    }
    if (srclen) return -1;
    return dstlen - len;
}
