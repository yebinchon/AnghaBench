
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ULONGLONG ;
typedef int LPWSTR ;


 int lstrcpyW (int ,int*) ;

__attribute__((used)) static void format_longlong(LPWSTR ret, ULONGLONG val)
{
    WCHAR buffer[65], *p = &buffer[64];

    *p = 0;
    do {
        *(--p) = '0' + val % 10;
 val /= 10;
    } while (val);
    lstrcpyW( ret, p );
}
