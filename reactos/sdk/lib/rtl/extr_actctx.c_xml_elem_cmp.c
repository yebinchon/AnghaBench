
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; scalar_t__ len; } ;
typedef TYPE_1__ xmlstr_t ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int BOOL ;


 int TRUE ;
 scalar_t__ strlenW (int const*) ;
 int strncmpW (scalar_t__,int const*,scalar_t__) ;

__attribute__((used)) static inline BOOL xml_elem_cmp(const xmlstr_t *elem, const WCHAR *str, const WCHAR *namespace)
{
    UINT len = strlenW( namespace );

    if (!strncmpW(elem->ptr, str, elem->len) && !str[elem->len]) return TRUE;
    return (elem->len > len && !strncmpW(elem->ptr, namespace, len) &&
            !strncmpW(elem->ptr + len, str, elem->len - len) && !str[elem->len - len]);
}
