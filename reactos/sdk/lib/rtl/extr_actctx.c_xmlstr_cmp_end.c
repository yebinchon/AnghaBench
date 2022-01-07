
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* ptr; } ;
typedef TYPE_1__ xmlstr_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int strncmpW (char*,int const*,int) ;

__attribute__((used)) static inline BOOL xmlstr_cmp_end(const xmlstr_t* xmlstr, const WCHAR *str)
{
    return (xmlstr->len && xmlstr->ptr[0] == '/' &&
            !strncmpW(xmlstr->ptr + 1, str, xmlstr->len - 1) && !str[xmlstr->len - 1]);
}
