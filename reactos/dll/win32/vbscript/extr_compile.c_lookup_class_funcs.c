
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int func_cnt; TYPE_1__* funcs; } ;
typedef TYPE_2__ class_desc_t ;
typedef int WCHAR ;
struct TYPE_4__ {scalar_t__ name; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int strcmpiW (scalar_t__,int const*) ;

__attribute__((used)) static BOOL lookup_class_funcs(class_desc_t *class_desc, const WCHAR *name)
{
    unsigned i;

    for(i=0; i < class_desc->func_cnt; i++) {
        if(class_desc->funcs[i].name && !strcmpiW(class_desc->funcs[i].name, name))
            return TRUE;
    }

    return FALSE;
}
