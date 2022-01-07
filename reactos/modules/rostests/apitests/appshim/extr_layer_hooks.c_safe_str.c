
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HIWORD (char const*) ;
 int StringCchPrintfA (char*,int ,char*,intptr_t) ;
 int _countof (char*) ;

__attribute__((used)) static const char* safe_str(const char* ptr)
{
    static char buffer[2][30];
    static int index = 0;
    if (HIWORD(ptr))
        return ptr;

    index ^= 1;
    StringCchPrintfA(buffer[index], _countof(buffer[index]), "#%Id", (intptr_t)ptr);
    return buffer[index];
}
