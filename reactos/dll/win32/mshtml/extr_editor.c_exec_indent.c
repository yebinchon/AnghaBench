
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int FIXME (char*) ;
 int NSCMD_INDENT ;
 int S_OK ;
 int TRACE (char*,int *) ;
 int UPDATE_UI ;
 int do_ns_command (int *,int ,int *) ;
 int update_doc (int *,int ) ;

__attribute__((used)) static HRESULT exec_indent(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    TRACE("(%p)\n", This);

    if(in || out)
        FIXME("unsupported args\n");

    do_ns_command(This, NSCMD_INDENT, ((void*)0));
    update_doc(This, UPDATE_UI);
    return S_OK;
}
