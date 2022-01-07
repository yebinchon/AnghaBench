
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;


 int assert (char*) ;
 char* grab_memory (size_t) ;
 int lstrlenW (scalar_t__ const*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static const char* encodeW(const WCHAR* str)
{
    char* ptr;
    size_t len,i;

    if (!str) return "";
    len = lstrlenW(str) + 1;
    ptr = grab_memory(len * 4 + 1);
    assert(ptr);
    for (i = 0; i < len; i++)
        sprintf(&ptr[i * 4], "%04x", (unsigned int)(unsigned short)str[i]);
    ptr[4 * len] = '\0';
    return ptr;
}
