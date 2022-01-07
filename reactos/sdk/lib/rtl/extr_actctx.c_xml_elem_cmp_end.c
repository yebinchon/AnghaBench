
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* ptr; scalar_t__ len; } ;
typedef TYPE_1__ xmlstr_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int xml_elem_cmp (TYPE_1__*,int const*,int const*) ;

__attribute__((used)) static inline BOOL xml_elem_cmp_end(const xmlstr_t *elem, const WCHAR *str, const WCHAR *namespace)
{
    if (elem->len && elem->ptr[0] == '/')
    {
        xmlstr_t elem_end;
        elem_end.ptr = elem->ptr + 1;
        elem_end.len = elem->len - 1;
        return xml_elem_cmp( &elem_end, str, namespace );
    }
    return FALSE;
}
