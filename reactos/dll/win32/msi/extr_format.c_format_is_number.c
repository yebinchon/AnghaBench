
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;



__attribute__((used)) static BOOL format_is_number(WCHAR x)
{
    return ((x >= '0') && (x <= '9'));
}
