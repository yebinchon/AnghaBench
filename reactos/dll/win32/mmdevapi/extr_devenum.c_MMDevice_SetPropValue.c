
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_14__ {int * Data4; int Data3; int Data2; int Data1; } ;
struct TYPE_13__ {int pid; TYPE_5__ fmtid; } ;
struct TYPE_10__ {int cbSize; int const* pBlobData; } ;
struct TYPE_11__ {scalar_t__ pwszVal; TYPE_1__ blob; int ulVal; } ;
struct TYPE_12__ {int vt; TYPE_2__ u; } ;
typedef TYPE_3__* REFPROPVARIANT ;
typedef TYPE_4__* REFPROPERTYKEY ;
typedef int LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef TYPE_5__ GUID ;
typedef int DWORD ;
typedef int BYTE ;


 int E_INVALIDARG ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int) ;
 int MMDevPropStore_OpenPropKey (TYPE_5__ const*,int ,int *) ;
 int REG_BINARY ;
 int REG_DWORD ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 int RegSetValueExW (int ,int *,int ,int ,int const*,int) ;
 int TRACE (char*,int const*,int) ;



 int const* debugstr_w (int *) ;
 int lstrlenW (scalar_t__) ;
 int propkey_formatW ;
 int wsprintfW (int *,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static HRESULT MMDevice_SetPropValue(const GUID *devguid, DWORD flow, REFPROPERTYKEY key, REFPROPVARIANT pv)
{
    WCHAR buffer[80];
    const GUID *id = &key->fmtid;
    HRESULT hr;
    HKEY regkey;
    LONG ret;

    hr = MMDevPropStore_OpenPropKey(devguid, flow, &regkey);
    if (FAILED(hr))
        return hr;
    wsprintfW( buffer, propkey_formatW, id->Data1, id->Data2, id->Data3,
               id->Data4[0], id->Data4[1], id->Data4[2], id->Data4[3],
               id->Data4[4], id->Data4[5], id->Data4[6], id->Data4[7], key->pid );
    switch (pv->vt)
    {
        case 128:
        {
            ret = RegSetValueExW(regkey, buffer, 0, REG_DWORD, (const BYTE*)&pv->u.ulVal, sizeof(DWORD));
            break;
        }
        case 130:
        {
            ret = RegSetValueExW(regkey, buffer, 0, REG_BINARY, pv->u.blob.pBlobData, pv->u.blob.cbSize);
            TRACE("Blob %p %u\n", pv->u.blob.pBlobData, pv->u.blob.cbSize);

            break;
        }
        case 129:
        {
            ret = RegSetValueExW(regkey, buffer, 0, REG_SZ, (const BYTE*)pv->u.pwszVal, sizeof(WCHAR)*(1+lstrlenW(pv->u.pwszVal)));
            break;
        }
        default:
            ret = 0;
            FIXME("Unhandled type %u\n", pv->vt);
            hr = E_INVALIDARG;
            break;
    }
    RegCloseKey(regkey);
    TRACE("Writing %s returned %u\n", debugstr_w(buffer), ret);
    return hr;
}
