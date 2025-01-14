
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef unsigned int DWORD ;


 scalar_t__ need_escape (char const) ;

__attribute__((used)) static DWORD copy_escape( WCHAR *dst, const WCHAR *src, DWORD len )
{
    static const WCHAR hex[] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
    DWORD ret = len;
    unsigned int i;
    WCHAR *p = dst;

    for (i = 0; i < len; i++, p++)
    {
        if (need_escape( src[i] ))
        {
            p[0] = '%';
            p[1] = hex[(src[i] >> 4) & 0xf];
            p[2] = hex[src[i] & 0xf];
            ret += 2;
            p += 2;
        }
        else *p = src[i];
    }
    dst[ret] = 0;
    return ret;
}
