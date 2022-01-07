
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbcs_table {unsigned char* cp2uni_leadbytes; int * cp2uni; } ;
typedef int WCHAR ;


 unsigned int wine_decompose (int ,int *,unsigned int) ;

__attribute__((used)) static int mbstowcs_dbcs_decompose( const struct dbcs_table *table,
                                    const unsigned char *src, unsigned int srclen,
                                    WCHAR *dst, unsigned int dstlen )
{
    const WCHAR * const cp2uni = table->cp2uni;
    const unsigned char * const cp2uni_lb = table->cp2uni_leadbytes;
    unsigned int len, res;
    WCHAR ch;

    if (!dstlen)
    {
        WCHAR dummy[4];
        for (len = 0; srclen; srclen--, src++)
        {
            unsigned char off = cp2uni_lb[*src];
            if (off && srclen > 1 && src[1])
            {
                src++;
                srclen--;
                ch = cp2uni[(off << 8) + *src];
            }
            else ch = cp2uni[*src];
            len += wine_decompose( ch, dummy, 4 );
        }
        return len;
    }

    for (len = dstlen; srclen && len; srclen--, src++)
    {
        unsigned char off = cp2uni_lb[*src];
        if (off && srclen > 1 && src[1])
        {
            src++;
            srclen--;
            ch = cp2uni[(off << 8) + *src];
        }
        else ch = cp2uni[*src];
        if (!(res = wine_decompose( ch, dst, len ))) break;
        dst += res;
        len -= res;
    }
    if (srclen) return -1;
    return dstlen - len;
}
