
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int WC_ERR_INVALID_CHARS ;
 unsigned int get_surrogate_value (int const*,unsigned int) ;

__attribute__((used)) static inline int get_length_wcs_utf8( int flags, const WCHAR *src, unsigned int srclen )
{
    int len;
    unsigned int val;

    for (len = 0; srclen; srclen--, src++)
    {
        if (*src < 0x80)
        {
            len++;
            continue;
        }
        if (*src < 0x800)
        {
            len += 2;
            continue;
        }
        if (!(val = get_surrogate_value( src, srclen )))
        {
            if (flags & WC_ERR_INVALID_CHARS) return -2;
            continue;
        }
        if (val < 0x10000)
            len += 3;
        else
        {
            len += 4;
            src++;
            srclen--;
        }
    }
    return len;
}
