
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB_ERR_INVALID_CHARS ;
 unsigned int decode_utf8_char (unsigned char,char const**,char const*) ;

__attribute__((used)) static inline int get_length_mbs_utf8( int flags, const char *src, int srclen )
{
    int ret = 0;
    unsigned int res;
    const char *srcend = src + srclen;

    while (src < srcend)
    {
        unsigned char ch = *src++;
        if (ch < 0x80)
        {
            ret++;
            continue;
        }
        if ((res = decode_utf8_char( ch, &src, srcend )) <= 0x10ffff)
        {
            if (res > 0xffff) ret++;
            ret++;
        }
        else if (flags & MB_ERR_INVALID_CHARS) return -2;

    }
    return ret;
}
