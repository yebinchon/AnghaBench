
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* desc; } ;
typedef TYPE_4__ vbdisp_t ;
typedef size_t vbdisp_invoke_type_t ;
typedef int WCHAR ;
struct TYPE_8__ {unsigned int func_cnt; TYPE_2__* funcs; } ;
struct TYPE_7__ {int name; TYPE_1__** entries; int is_public; } ;
struct TYPE_6__ {int is_public; } ;
typedef unsigned int DISPID ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 size_t VBDISP_ANY ;
 int strcmpiW (int ,int const*) ;

__attribute__((used)) static BOOL get_func_id(vbdisp_t *This, const WCHAR *name, vbdisp_invoke_type_t invoke_type, BOOL search_private, DISPID *id)
{
    unsigned i;

    for(i = invoke_type == VBDISP_ANY ? 0 : 1; i < This->desc->func_cnt; i++) {
        if(invoke_type == VBDISP_ANY) {
            if(!search_private && !This->desc->funcs[i].is_public)
                continue;
            if(!i && !This->desc->funcs[0].name)
                continue;
        }else {
            if(!This->desc->funcs[i].entries[invoke_type]
                || (!search_private && !This->desc->funcs[i].entries[invoke_type]->is_public))
                continue;
        }

        if(!strcmpiW(This->desc->funcs[i].name, name)) {
            *id = i;
            return TRUE;
        }
    }

    return FALSE;
}
