
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int EINVAL ;
 int utf8_mbtowc (int*,unsigned char const*,int) ;

__attribute__((used)) static int char2uni(const unsigned char *rawstring, int boundlen, wchar_t *uni)
{
    int n;

    if ( (n = utf8_mbtowc(uni, rawstring, boundlen)) == -1) {
        *uni = 0x003f;
        n = -EINVAL;
    }
    return n;
}
