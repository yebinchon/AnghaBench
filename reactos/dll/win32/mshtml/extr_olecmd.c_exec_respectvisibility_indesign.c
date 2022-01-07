
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int FIXME (char*,int ) ;
 int S_OK ;
 int TRACE (char*,int *,int ,int ,int *) ;
 scalar_t__ VT_BOOL ;
 int V_BOOL (int *) ;
 scalar_t__ V_VT (int *) ;
 int debugstr_variant (int *) ;

__attribute__((used)) static HRESULT exec_respectvisibility_indesign(HTMLDocument *This, DWORD cmdexecopt,
        VARIANT *in, VARIANT *out)
{
    TRACE("(%p)->(%x %s %p)\n", This, cmdexecopt, debugstr_variant(in), out);


    if(!in || V_VT(in) != VT_BOOL || !V_BOOL(in))
        FIXME("Unsupported argument %s\n", debugstr_variant(in));

    return S_OK;
}
