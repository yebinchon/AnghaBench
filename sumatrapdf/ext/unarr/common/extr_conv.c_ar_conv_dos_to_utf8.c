
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int buf ;


 scalar_t__ ar_conv_rune_to_utf8 (int ,char*,int) ;
 int * gCp437 ;
 char* malloc (size_t) ;

char *ar_conv_dos_to_utf8(const char *astr)
{
    char *str, *out;
    const char *in;
    size_t size;

    size = 0;
    for (in = astr; *in; in++) {
        char buf[4];
        size += ar_conv_rune_to_utf8(gCp437[(uint8_t)*in], buf, sizeof(buf));
    }

    if (size == (size_t)-1)
        return ((void*)0);
    str = malloc(size + 1);
    if (!str)
        return ((void*)0);

    for (in = astr, out = str; *in; in++) {
        out += ar_conv_rune_to_utf8(gCp437[(uint8_t)*in], out, str + size - out);
    }
    *out = '\0';

    return str;
}
