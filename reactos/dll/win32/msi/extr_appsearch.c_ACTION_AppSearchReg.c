
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {int db; } ;
struct TYPE_14__ {int hdr; } ;
struct TYPE_13__ {char const* Name; } ;
typedef TYPE_1__ MSISIGNATURE ;
typedef TYPE_2__ MSIRECORD ;
typedef TYPE_3__ MSIPACKAGE ;
typedef char* LPWSTR ;
typedef int LPCWSTR ;
typedef char* LPBYTE ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;


 int ACTION_ConvertRegValue (scalar_t__,char*,scalar_t__,char**) ;
 int ACTION_SearchDirectory (TYPE_3__*,TYPE_1__*,char*,int ,char**) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ExpandEnvironmentStringsW (int ,char*,scalar_t__) ;
 int FIXME (char*,int,scalar_t__,scalar_t__) ;
 int * HKEY_CLASSES_ROOT ;
 int * HKEY_CURRENT_USER ;
 int * HKEY_LOCAL_MACHINE ;
 int * HKEY_USERS ;
 TYPE_2__* MSI_QueryGetRecord (int ,char const*,char const*) ;
 int MSI_RecordGetInteger (TYPE_2__*,int) ;
 char* MSI_RecordGetString (TYPE_2__*,int) ;
 scalar_t__ REG_EXPAND_SZ ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyW (int *,char*,int **) ;
 scalar_t__ RegQueryValueExW (int *,char*,int *,scalar_t__*,char*,scalar_t__*) ;
 int TRACE (char*,scalar_t__) ;
 int WARN (char*,int) ;
 char* app_search_file (char*,TYPE_1__*) ;
 scalar_t__ debugstr_w (char const*) ;
 int deformat_string (TYPE_3__*,char const*,char**) ;
 char* msi_alloc (scalar_t__) ;
 int msi_free (char*) ;







 int msiobj_release (int *) ;
 char* strchrW (char*,char) ;

__attribute__((used)) static UINT ACTION_AppSearchReg(MSIPACKAGE *package, LPWSTR *appValue, MSISIGNATURE *sig)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        'R','e','g','L','o','c','a','t','o','r',' ','W','H','E','R','E',' ',
        'S','i','g','n','a','t','u','r','e','_',' ','=',' ', '\'','%','s','\'',0};
    const WCHAR *keyPath, *valueName;
    WCHAR *deformatted = ((void*)0), *ptr = ((void*)0), *end;
    int root, type;
    HKEY rootKey, key = ((void*)0);
    DWORD sz = 0, regType;
    LPBYTE value = ((void*)0);
    MSIRECORD *row;
    UINT rc;

    TRACE("%s\n", debugstr_w(sig->Name));

    *appValue = ((void*)0);

    row = MSI_QueryGetRecord( package->db, query, sig->Name );
    if (!row)
    {
        TRACE("failed to query RegLocator for %s\n", debugstr_w(sig->Name));
        return ERROR_SUCCESS;
    }

    root = MSI_RecordGetInteger(row, 2);
    keyPath = MSI_RecordGetString(row, 3);
    valueName = MSI_RecordGetString(row, 4);
    type = MSI_RecordGetInteger(row, 5);

    deformat_string(package, keyPath, &deformatted);

    switch (root)
    {
    case 131:
        rootKey = HKEY_CLASSES_ROOT;
        break;
    case 130:
        rootKey = HKEY_CURRENT_USER;
        break;
    case 129:
        rootKey = HKEY_LOCAL_MACHINE;
        break;
    case 128:
        rootKey = HKEY_USERS;
        break;
    default:
        WARN("Unknown root key %d\n", root);
        goto end;
    }

    rc = RegOpenKeyW(rootKey, deformatted, &key);
    if (rc)
    {
        TRACE("RegOpenKeyW returned %d\n", rc);
        goto end;
    }

    msi_free(deformatted);
    deformat_string(package, valueName, &deformatted);

    rc = RegQueryValueExW(key, deformatted, ((void*)0), ((void*)0), ((void*)0), &sz);
    if (rc)
    {
        TRACE("RegQueryValueExW returned %d\n", rc);
        goto end;
    }



    value = msi_alloc( sz );
    rc = RegQueryValueExW(key, deformatted, ((void*)0), &regType, value, &sz);
    if (rc)
    {
        TRACE("RegQueryValueExW returned %d\n", rc);
        goto end;
    }


    if (sz == 0)
        goto end;


    if (regType == REG_EXPAND_SZ)
    {
        sz = ExpandEnvironmentStringsW((LPCWSTR)value, ((void*)0), 0);
        if (sz)
        {
            LPWSTR buf = msi_alloc(sz * sizeof(WCHAR));
            ExpandEnvironmentStringsW((LPCWSTR)value, buf, sz);
            msi_free(value);
            value = (LPBYTE)buf;
        }
    }

    if ((regType == REG_SZ || regType == REG_EXPAND_SZ) &&
        (ptr = strchrW((LPWSTR)value, '"')) && (end = strchrW(++ptr, '"')))
        *end = '\0';
    else
        ptr = (LPWSTR)value;

    switch (type & 0x0f)
    {
    case 134:
        ACTION_SearchDirectory(package, sig, ptr, 0, appValue);
        break;
    case 133:
        *appValue = app_search_file(ptr, sig);
        break;
    case 132:
        ACTION_ConvertRegValue(regType, value, sz, appValue);
        break;
    default:
        FIXME("unimplemented for type %d (key path %s, value %s)\n",
              type, debugstr_w(keyPath), debugstr_w(valueName));
    }
end:
    msi_free( value );
    RegCloseKey( key );
    msi_free( deformatted );

    msiobj_release(&row->hdr);
    return ERROR_SUCCESS;
}
