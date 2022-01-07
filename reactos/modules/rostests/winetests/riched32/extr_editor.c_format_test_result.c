
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char const) ;
 int strlen (char const*) ;

__attribute__((used)) static void format_test_result(char *target, const char *src)
{
    int i;
    for (i = 0; i < strlen(src); i++)
        sprintf(target + 2*i, "%02x", src[i] & 0xFF);
    target[2*i] = 0;
}
