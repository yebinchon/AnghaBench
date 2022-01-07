
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ __u8 ;
typedef int __u16 ;


 int utf8_wctomb (scalar_t__*,int const,int) ;

int
utf8_wcstombs(__u8 *s, const wchar_t *pwcs, int maxlen)
{
    const __u16 *ip;
    __u8 *op;
    int size;

    op = s;
    ip = pwcs;
    while (*ip && maxlen > 0) {
        if (*ip > 0x7f) {
            size = utf8_wctomb(op, *ip, maxlen);
            if (size == -1) {

                maxlen--;
            } else {
                op += size;
                maxlen -= size;
            }
        } else {
            *op++ = (__u8) *ip;
        }
        ip++;
    }
    return (int)(op - s);
}
