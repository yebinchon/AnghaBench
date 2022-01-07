
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int new_val ;
typedef scalar_t__ WCHAR ;
typedef int IMMDevice ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int ERole ;
typedef int EDataFlow ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CoTaskMemFree (scalar_t__*) ;
 int ERR (char*,int ) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IMMDevice_GetId (int *,scalar_t__**) ;
 scalar_t__ RegQueryValueExW (int ,scalar_t__ const*,int ,int *,int *,int*) ;
 int TRUE ;
 int lstrcmpW (scalar_t__*,scalar_t__*) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int notify_clients (int ,int ,scalar_t__*) ;

__attribute__((used)) static BOOL notify_if_changed(EDataFlow flow, ERole role, HKEY key,
                              const WCHAR *val_name, WCHAR *old_val, IMMDevice *def_dev)
{
    WCHAR new_val[64], *id;
    DWORD size;
    HRESULT hr;

    size = sizeof(new_val);
    if(RegQueryValueExW(key, val_name, 0, ((void*)0),
                (BYTE*)new_val, &size) != ERROR_SUCCESS){
        if(old_val[0] != 0){

            if(def_dev){
                hr = IMMDevice_GetId(def_dev, &id);
                if(FAILED(hr)){
                    ERR("GetId failed: %08x\n", hr);
                    return FALSE;
                }
            }else
                id = ((void*)0);

            notify_clients(flow, role, id);
            old_val[0] = 0;
            CoTaskMemFree(id);

            return TRUE;
        }


        return FALSE;
    }

    if(!lstrcmpW(old_val, new_val)){

        return FALSE;
    }

    if(new_val[0] != 0){

        notify_clients(flow, role, new_val);
        memcpy(old_val, new_val, sizeof(new_val));
        return TRUE;
    }


    if(def_dev){
        hr = IMMDevice_GetId(def_dev, &id);
        if(FAILED(hr)){
            ERR("GetId failed: %08x\n", hr);
            return FALSE;
        }
    }else
        id = ((void*)0);

    notify_clients(flow, role, id);
    old_val[0] = 0;
    CoTaskMemFree(id);

    return TRUE;
}
