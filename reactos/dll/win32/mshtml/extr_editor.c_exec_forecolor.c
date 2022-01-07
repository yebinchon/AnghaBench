
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsICommandParams ;
typedef int VARIANT ;
typedef int HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_NOTIMPL ;
 int FIXME (char*,...) ;
 int NSCMD_FONTCOLOR ;
 int NSSTATE_ATTRIBUTE ;
 int S_OK ;
 int TRACE (char*,int *,int *,int *) ;
 int UPDATE_UI ;
 scalar_t__ VT_I4 ;
 int V_I4 (int *) ;
 scalar_t__ V_VT (int *) ;
 int * create_nscommand_params () ;
 int debugstr_variant (int *) ;
 int do_ns_command (int *,int ,int *) ;
 int nsICommandParams_Release (int *) ;
 int nsICommandParams_SetCStringValue (int *,int ,char*) ;
 int sprintf (char*,char*,int,int,int) ;
 int update_doc (int *,int ) ;

__attribute__((used)) static HRESULT exec_forecolor(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    TRACE("(%p)->(%p %p)\n", This, in, out);

    if(in) {
        if(V_VT(in) == VT_I4) {
            nsICommandParams *nsparam = create_nscommand_params();
            char color_str[10];

            sprintf(color_str, "#%02x%02x%02x",
                    V_I4(in)&0xff, (V_I4(in)>>8)&0xff, (V_I4(in)>>16)&0xff);

            nsICommandParams_SetCStringValue(nsparam, NSSTATE_ATTRIBUTE, color_str);
            do_ns_command(This, NSCMD_FONTCOLOR, nsparam);

            nsICommandParams_Release(nsparam);
        }else {
            FIXME("unsupported forecolor %s\n", debugstr_variant(in));
        }

        update_doc(This, UPDATE_UI);
    }

    if(out) {
        FIXME("unsupported out\n");
        return E_NOTIMPL;
    }

    return S_OK;
}
