
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ver ;
typedef int typelibkey ;
typedef int tlguid ;
typedef int tlfn ;
typedef int WCHAR ;
struct TYPE_3__ {int Data1; int Data2; int Data3; int* Data4; } ;
typedef int REGSAM ;
typedef TYPE_1__* REFIID ;
typedef int LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 int ERR (char*,...) ;
 int E_FAIL ;
 int GetCurrentProcess () ;
 int HKEY_CLASSES_ROOT ;
 scalar_t__ IsWow64Process (int ,scalar_t__*) ;
 int KEY_READ ;
 int KEY_WOW64_32KEY ;
 int KEY_WOW64_64KEY ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int RegCloseKey (int ) ;
 int RegOpenKeyExA (int ,char*,int ,int,int *) ;
 scalar_t__ RegQueryValueA (int ,char*,char*,int*) ;
 scalar_t__ RegQueryValueExA (int ,char*,int *,int*,int *,int*) ;
 int S_OK ;
 int snprintf (char*,int,char*,char*,char*,int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static HRESULT reg_get_typelib_module(REFIID iid, WCHAR *module, DWORD len)
{
    REGSAM opposite = (sizeof(void*) == 8) ? KEY_WOW64_32KEY : KEY_WOW64_64KEY;
    char tlguid[200], typelibkey[300], interfacekey[300], ver[100], tlfn[260];
    DWORD tlguidlen, verlen, type;
    LONG tlfnlen, err;
    BOOL is_wow64;
    HKEY ikey;

    sprintf( interfacekey, "Interface\\{%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}\\Typelib",
        iid->Data1, iid->Data2, iid->Data3,
        iid->Data4[0], iid->Data4[1], iid->Data4[2], iid->Data4[3],
        iid->Data4[4], iid->Data4[5], iid->Data4[6], iid->Data4[7]
    );

    err = RegOpenKeyExA(HKEY_CLASSES_ROOT,interfacekey,0,KEY_READ,&ikey);
    if (err && (opposite == KEY_WOW64_32KEY || (IsWow64Process(GetCurrentProcess(), &is_wow64)
                                                && is_wow64)))
        err = RegOpenKeyExA(HKEY_CLASSES_ROOT,interfacekey,0,KEY_READ|opposite,&ikey);

    if (err)
    {
        ERR("No %s key found.\n", interfacekey);
        return E_FAIL;
    }

    tlguidlen = sizeof(tlguid);
    if (RegQueryValueExA(ikey, ((void*)0), ((void*)0), &type, (BYTE *)tlguid, &tlguidlen))
    {
        ERR("Getting typelib guid failed.\n");
        RegCloseKey(ikey);
        return E_FAIL;
    }

    verlen = sizeof(ver);
    if (RegQueryValueExA(ikey, "Version", ((void*)0), &type, (BYTE *)ver, &verlen))
    {
        ERR("Could not get version value?\n");
        RegCloseKey(ikey);
        return E_FAIL;
    }

    RegCloseKey(ikey);


    sprintf(typelibkey, "Typelib\\%s\\%s\\0\\win%u", tlguid, ver, sizeof(void *) == 8 ? 64 : 32);



    tlfnlen = sizeof(tlfn);
    if (RegQueryValueA(HKEY_CLASSES_ROOT, typelibkey, tlfn, &tlfnlen))
    {






            ERR("Could not get typelib fn?\n");
            return E_FAIL;



    }
    MultiByteToWideChar(CP_ACP, 0, tlfn, -1, module, len);
    return S_OK;
}
