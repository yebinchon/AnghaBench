
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; int len; } ;
typedef TYPE_1__ xmlstr_t ;
typedef char WCHAR ;
typedef int DWORD ;


 int get_olemisc_value (char const*,int) ;

__attribute__((used)) static DWORD parse_com_class_misc(const xmlstr_t *value)
{
    const WCHAR *str = value->ptr, *start;
    DWORD flags = 0;
    int i = 0;


    while (i < value->len)
    {
        start = str;
        while (*str != ',' && (i++ < value->len)) str++;

        flags |= get_olemisc_value(start, str-start);


        str++;
        i++;
    }

    return flags;
}
