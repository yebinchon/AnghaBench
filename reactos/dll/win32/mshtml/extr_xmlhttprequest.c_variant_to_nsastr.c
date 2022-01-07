
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsAString ;
typedef int VARIANT ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int FIXME (char*,int ) ;
 int S_OK ;




 int V_BSTR (int *) ;
 int V_VT (int *) ;
 int debugstr_variant (int *) ;
 int nsAString_Init (int *,int *) ;
 int nsAString_InitDepend (int *,int ) ;

__attribute__((used)) static HRESULT variant_to_nsastr(VARIANT var, nsAString *ret)
{
    switch(V_VT(&var)) {
        case 128:
        case 129:
        case 130:
            nsAString_Init(ret, ((void*)0));
            return S_OK;
        case 131:
            nsAString_InitDepend(ret, V_BSTR(&var));
            return S_OK;
        default:
            FIXME("Unsupported VARIANT: %s\n", debugstr_variant(&var));
            return E_INVALIDARG;
    }
}
