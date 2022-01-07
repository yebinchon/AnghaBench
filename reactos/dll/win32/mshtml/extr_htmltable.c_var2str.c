
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsAString ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef int BSTR ;
typedef scalar_t__ BOOL ;


 int E_NOTIMPL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int S_OK ;
 int SysFreeString (int ) ;




 int V_BSTR (int const*) ;
 int V_I4 (int const*) ;
 int V_R4 (int const*) ;
 int V_R8 (int const*) ;
 int V_VT (int const*) ;
 int VarBstrFromI4 (int ,int ,int ,int *) ;
 int VarBstrFromR4 (int ,int ,int ,int *) ;
 int VarBstrFromR8 (int ,int ,int ,int *) ;
 int debugstr_variant (int const*) ;
 scalar_t__ nsAString_Init (int *,int ) ;

__attribute__((used)) static HRESULT var2str(const VARIANT *p, nsAString *nsstr)
{
    BSTR str;
    BOOL ret;
    HRESULT hres;

    switch(V_VT(p)) {
    case 131:
        return nsAString_Init(nsstr, V_BSTR(p))?
            S_OK : E_OUTOFMEMORY;
    case 128:
        hres = VarBstrFromR8(V_R8(p), 0, 0, &str);
        break;
    case 129:
        hres = VarBstrFromR4(V_R4(p), 0, 0, &str);
        break;
    case 130:
        hres = VarBstrFromI4(V_I4(p), 0, 0, &str);
        break;
    default:
        FIXME("unsupported arg %s\n", debugstr_variant(p));
        return E_NOTIMPL;
    }
    if (FAILED(hres))
        return hres;

    ret = nsAString_Init(nsstr, str);
    SysFreeString(str);
    return ret ? S_OK : E_OUTOFMEMORY;
}
