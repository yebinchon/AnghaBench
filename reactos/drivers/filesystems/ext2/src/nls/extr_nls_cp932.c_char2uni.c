
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int EINVAL ;
 int ENAMETOOLONG ;
 int** page_charset2uni ;

__attribute__((used)) static int char2uni(const unsigned char *rawstring, int boundlen,
                    wchar_t *uni)
{
    unsigned char ch, cl;
    wchar_t *charset2uni;

    if (boundlen <= 0)
        return -ENAMETOOLONG;

    if (rawstring[0] <= 0x7F) {
        *uni = rawstring[0];
        return 1;
    }
    if (0xA1 <= rawstring[0] && rawstring[0] <= 0xDF) {
        *uni = 0xFF00 | (rawstring[0] - 0x40);
        return 1;
    }

    if (boundlen < 2)
        return -ENAMETOOLONG;
    ch = rawstring[0];
    cl = rawstring[1];
    charset2uni = page_charset2uni[ch];
    if (charset2uni && cl) {
        *uni = charset2uni[cl];
        if (*uni == 0x0000)
            return -EINVAL;
        return 2;
    }
    else
        return -EINVAL;
}
