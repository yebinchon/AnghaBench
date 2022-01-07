
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int MB_ERR_INVALID_CHARS ;
 unsigned int decode_utf8_char (unsigned char,char const**,char const*) ;
 char wine_compose (char*) ;

__attribute__((used)) static inline int get_length_mbs_utf8_compose( int flags, const char *src, int srclen )
{
    int ret = 0;
    unsigned int res;
    WCHAR composed[2];
    const char *srcend = src + srclen;

    composed[0] = 0;
    while (src < srcend)
    {
        unsigned char ch = *src++;
        if (ch < 0x80)
        {
            composed[0] = ch;
            ret++;
            continue;
        }
        if ((res = decode_utf8_char( ch, &src, srcend )) <= 0xffff)
        {
            if (composed[0])
            {
                composed[1] = res;
                if ((composed[0] = wine_compose( composed ))) continue;
            }
            composed[0] = res;
            ret++;
        }
        else if (res <= 0x10ffff)
        {
            ret += 2;
            composed[0] = 0;
        }
        else if (flags & MB_ERR_INVALID_CHARS) return -2;

    }
    return ret;
}
