
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int ptr; } ;
typedef TYPE_1__ xmlstr_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int strncmpW (int ,int const*,size_t) ;

__attribute__((used)) static inline BOOL xmlstr_cmp(const xmlstr_t* xmlstr, const WCHAR *str)
{
    return !strncmpW(xmlstr->ptr, str, xmlstr->len) && !str[xmlstr->len];
}
