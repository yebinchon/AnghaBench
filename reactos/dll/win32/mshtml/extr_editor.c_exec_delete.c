
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_7__ {TYPE_1__* doc_obj; } ;
struct TYPE_6__ {scalar_t__ nscontainer; } ;
typedef TYPE_2__ HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int NSCMD_DELETECHARFORWARD ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,int *,int *) ;
 int UPDATE_UI ;
 int do_ns_editor_command (scalar_t__,int ) ;
 int update_doc (TYPE_2__*,int ) ;

__attribute__((used)) static HRESULT exec_delete(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    TRACE("(%p)->(%p %p)\n", This, in, out);

    if(This->doc_obj->nscontainer)
        do_ns_editor_command(This->doc_obj->nscontainer, NSCMD_DELETECHARFORWARD);

    update_doc(This, UPDATE_UI);
    return S_OK;
}
