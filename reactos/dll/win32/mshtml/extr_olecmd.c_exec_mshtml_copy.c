
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_8__ {TYPE_1__* doc_obj; } ;
struct TYPE_7__ {scalar_t__ usermode; } ;
typedef TYPE_2__ HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ EDITMODE ;
 int NSCMD_COPY ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,int ,int *,int *) ;
 int do_ns_command (TYPE_2__*,int ,int *) ;
 int editor_exec_copy (TYPE_2__*,int ,int *,int *) ;

__attribute__((used)) static HRESULT exec_mshtml_copy(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    TRACE("(%p)->(%08x %p %p)\n", This, cmdexecopt, in, out);

    if(This->doc_obj->usermode == EDITMODE)
        return editor_exec_copy(This, cmdexecopt, in, out);

    do_ns_command(This, NSCMD_COPY, ((void*)0));
    return S_OK;
}
