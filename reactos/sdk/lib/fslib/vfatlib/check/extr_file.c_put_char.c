
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dos_char_to_printable (char**,unsigned char) ;

__attribute__((used)) static void put_char(char **p, unsigned char c)
{

    if (dos_char_to_printable(p, c))
 return;

    if ((c >= ' ' && c < 0x7f) || c >= 0xa0)
 *(*p)++ = c;
    else {
 *(*p)++ = '\\';
 *(*p)++ = '0' + (c >> 6);
 *(*p)++ = '0' + ((c >> 3) & 7);
 *(*p)++ = '0' + (c & 7);
    }
}
