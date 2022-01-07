
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_15__ {int * Data4; int Data3; int Data2; int Data1; } ;
struct TYPE_11__ {int cbSize; void* pBlobData; } ;
struct TYPE_12__ {TYPE_1__ blob; int ulVal; void* pwszVal; } ;
struct TYPE_14__ {TYPE_2__ u; int vt; } ;
struct TYPE_13__ {int pid; TYPE_5__ fmtid; } ;
typedef TYPE_3__* REFPROPERTYKEY ;
typedef TYPE_4__ PROPVARIANT ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef TYPE_5__ GUID ;
typedef int DWORD ;
typedef int BYTE ;


 void* CoTaskMemAlloc (int) ;
 int ERR (char*,int) ;
 scalar_t__ ERROR_SUCCESS ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int MMDevPropStore_OpenPropKey (TYPE_5__ const*,int,int *) ;
 int PropVariantClear (TYPE_4__*) ;



 int RRF_RT_ANY ;
 int RRF_RT_REG_BINARY ;
 int RRF_RT_REG_DWORD ;
 int RRF_RT_REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegGetValueW (int ,int *,int *,int ,int*,int *,int*) ;
 int S_OK ;
 int VT_BLOB ;
 int VT_LPWSTR ;
 int VT_UI4 ;
 int WARN (char*,int ,scalar_t__) ;
 int debugstr_w (int *) ;
 int propkey_formatW ;
 int wsprintfW (int *,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static HRESULT MMDevice_GetPropValue(const GUID *devguid, DWORD flow, REFPROPERTYKEY key, PROPVARIANT *pv)
{
    WCHAR buffer[80];
    const GUID *id = &key->fmtid;
    DWORD type, size;
    HRESULT hr = S_OK;
    HKEY regkey;
    LONG ret;

    hr = MMDevPropStore_OpenPropKey(devguid, flow, &regkey);
    if (FAILED(hr))
        return hr;
    wsprintfW( buffer, propkey_formatW, id->Data1, id->Data2, id->Data3,
               id->Data4[0], id->Data4[1], id->Data4[2], id->Data4[3],
               id->Data4[4], id->Data4[5], id->Data4[6], id->Data4[7], key->pid );
    ret = RegGetValueW(regkey, ((void*)0), buffer, RRF_RT_ANY, &type, ((void*)0), &size);
    if (ret != ERROR_SUCCESS)
    {
        WARN("Reading %s returned %d\n", debugstr_w(buffer), ret);
        RegCloseKey(regkey);
        PropVariantClear(pv);
        return S_OK;
    }

    switch (type)
    {
        case 128:
        {
            pv->vt = VT_LPWSTR;
            pv->u.pwszVal = CoTaskMemAlloc(size);
            if (!pv->u.pwszVal)
                hr = E_OUTOFMEMORY;
            else
                RegGetValueW(regkey, ((void*)0), buffer, RRF_RT_REG_SZ, ((void*)0), (BYTE*)pv->u.pwszVal, &size);
            break;
        }
        case 129:
        {
            pv->vt = VT_UI4;
            RegGetValueW(regkey, ((void*)0), buffer, RRF_RT_REG_DWORD, ((void*)0), (BYTE*)&pv->u.ulVal, &size);
            break;
        }
        case 130:
        {
            pv->vt = VT_BLOB;
            pv->u.blob.cbSize = size;
            pv->u.blob.pBlobData = CoTaskMemAlloc(size);
            if (!pv->u.blob.pBlobData)
                hr = E_OUTOFMEMORY;
            else
                RegGetValueW(regkey, ((void*)0), buffer, RRF_RT_REG_BINARY, ((void*)0), (BYTE*)pv->u.blob.pBlobData, &size);
            break;
        }
        default:
            ERR("Unknown/unhandled type: %u\n", type);
            PropVariantClear(pv);
            break;
    }
    RegCloseKey(regkey);
    return hr;
}
