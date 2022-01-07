
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;



__attribute__((used)) static void do_initW(WCHAR* tmp, const char* pattern, int len)
{
    const char* p = pattern;

    while (len--)
    {
        *tmp++ = *p++;
        if (!*p) p = pattern;
    }
    *tmp = '\0';
}
