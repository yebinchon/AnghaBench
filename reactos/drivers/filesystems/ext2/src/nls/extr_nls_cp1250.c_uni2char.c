
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int EINVAL ;
 int ENAMETOOLONG ;
 unsigned char** page_uni2charset ;

__attribute__((used)) static int uni2char(wchar_t uni, unsigned char *out, int boundlen)
{
    unsigned char *uni2charset;
    unsigned char cl = uni & 0x00ff;
    unsigned char ch = (uni & 0xff00) >> 8;

    if (boundlen <= 0)
        return -ENAMETOOLONG;

    uni2charset = page_uni2charset[ch];
    if (uni2charset && uni2charset[cl])
        out[0] = uni2charset[cl];
    else
        return -EINVAL;
    return 1;
}
