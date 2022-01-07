
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void do_initA(char* tmp, const char* pattern, int len)
{
    const char* p = pattern;

    while (len--)
    {
        *tmp++ = *p++;
        if (!*p) p = pattern;
    }
    *tmp = '\0';
}
