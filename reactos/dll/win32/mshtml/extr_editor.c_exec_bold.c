
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_8__ {TYPE_1__* doc_obj; } ;
struct TYPE_7__ {scalar_t__ nscontainer; } ;
typedef TYPE_2__ HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int FIXME (char*) ;
 int NSCMD_BOLD ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*) ;
 int UPDATE_UI ;
 int do_ns_command (TYPE_2__*,int ,int *) ;
 int update_doc (TYPE_2__*,int ) ;

__attribute__((used)) static HRESULT exec_bold(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    TRACE("(%p)\n", This);

    if(in || out)
        FIXME("unsupported args\n");

    if(This->doc_obj->nscontainer)
        do_ns_command(This, NSCMD_BOLD, ((void*)0));

    update_doc(This, UPDATE_UI);
    return S_OK;
}
