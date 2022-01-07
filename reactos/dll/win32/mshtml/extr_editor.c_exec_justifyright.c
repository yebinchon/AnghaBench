
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int FIXME (char*) ;
 int NSALIGN_RIGHT ;
 int S_OK ;
 int TRACE (char*,int *) ;
 int UPDATE_UI ;
 int set_ns_align (int *,int ) ;
 int update_doc (int *,int ) ;

__attribute__((used)) static HRESULT exec_justifyright(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    TRACE("(%p)\n", This);

    if(in || out)
        FIXME("unsupported args\n");

    set_ns_align(This, NSALIGN_RIGHT);
    update_doc(This, UPDATE_UI);
    return S_OK;
}
