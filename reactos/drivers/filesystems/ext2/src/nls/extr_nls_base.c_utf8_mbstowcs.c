
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int __u8 ;
typedef int __u16 ;


 int utf8_mbtowc (int *,int const*,int) ;

int
utf8_mbstowcs(wchar_t *pwcs, const __u8 *s, int n)
{
    __u16 *op;
    const __u8 *ip;
    int size;

    op = pwcs;
    ip = s;
    while (*ip && n > 0) {
        if (*ip & 0x80) {
            size = utf8_mbtowc(op, ip, n);
            if (size == -1) {

                ip++;
                n--;
            } else {
                op++;
                ip += size;
                n -= size;
            }
        } else {
            *op++ = *ip++;
            n--;
        }
    }
    return (int)(op - pwcs);
}
