
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_6__ {TYPE_1__* doc_obj; } ;
struct TYPE_5__ {int nscontainer; } ;
typedef TYPE_2__ HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_FAIL ;
 int NSCMD_CUT ;
 int S_OK ;
 int UPDATE_UI ;
 int do_ns_editor_command (int ,int ) ;
 int update_doc (TYPE_2__*,int ) ;

HRESULT editor_exec_cut(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    update_doc(This, UPDATE_UI);

    if(!This->doc_obj->nscontainer)
        return E_FAIL;

    do_ns_editor_command(This->doc_obj->nscontainer, NSCMD_CUT);
    return S_OK;
}
