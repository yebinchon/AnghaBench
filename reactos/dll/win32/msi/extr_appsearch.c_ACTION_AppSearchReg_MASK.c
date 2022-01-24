#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/  db; } ;
struct TYPE_14__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_13__ {char const* Name; } ;
typedef  TYPE_1__ MSISIGNATURE ;
typedef  TYPE_2__ MSIRECORD ;
typedef  TYPE_3__ MSIPACKAGE ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  char* LPBYTE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*,char*,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/ * HKEY_CURRENT_USER ; 
 int /*<<< orphan*/ * HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/ * HKEY_USERS ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 char* FUNC6 (TYPE_2__*,int) ; 
 scalar_t__ REG_EXPAND_SZ ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 char* FUNC12 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char const*,char**) ; 
 char* FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
#define  msidbLocatorTypeDirectory 134 
#define  msidbLocatorTypeFileName 133 
#define  msidbLocatorTypeRawValue 132 
#define  msidbRegistryRootClassesRoot 131 
#define  msidbRegistryRootCurrentUser 130 
#define  msidbRegistryRootLocalMachine 129 
#define  msidbRegistryRootUsers 128 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 char* FUNC18 (char*,char) ; 

__attribute__((used)) static UINT FUNC19(MSIPACKAGE *package, LPWSTR *appValue, MSISIGNATURE *sig)
{
    static const WCHAR query[] =  {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        'R','e','g','L','o','c','a','t','o','r',' ','W','H','E','R','E',' ',
        'S','i','g','n','a','t','u','r','e','_',' ','=',' ', '\'','%','s','\'',0};
    const WCHAR *keyPath, *valueName;
    WCHAR *deformatted = NULL, *ptr = NULL, *end;
    int root, type;
    HKEY rootKey, key = NULL;
    DWORD sz = 0, regType;
    LPBYTE value = NULL;
    MSIRECORD *row;
    UINT rc;

    FUNC10("%s\n", FUNC13(sig->Name));

    *appValue = NULL;

    row = FUNC4( package->db, query, sig->Name );
    if (!row)
    {
        FUNC10("failed to query RegLocator for %s\n", FUNC13(sig->Name));
        return ERROR_SUCCESS;
    }

    root = FUNC5(row, 2);
    keyPath = FUNC6(row, 3);
    valueName = FUNC6(row, 4);
    type = FUNC5(row, 5);

    FUNC14(package, keyPath, &deformatted);

    switch (root)
    {
    case msidbRegistryRootClassesRoot:
        rootKey = HKEY_CLASSES_ROOT;
        break;
    case msidbRegistryRootCurrentUser:
        rootKey = HKEY_CURRENT_USER;
        break;
    case msidbRegistryRootLocalMachine:
        rootKey = HKEY_LOCAL_MACHINE;
        break;
    case msidbRegistryRootUsers:
        rootKey = HKEY_USERS;
        break;
    default:
        FUNC11("Unknown root key %d\n", root);
        goto end;
    }

    rc = FUNC8(rootKey, deformatted, &key);
    if (rc)
    {
        FUNC10("RegOpenKeyW returned %d\n", rc);
        goto end;
    }

    FUNC16(deformatted);
    FUNC14(package, valueName, &deformatted);

    rc = FUNC9(key, deformatted, NULL, NULL, NULL, &sz);
    if (rc)
    {
        FUNC10("RegQueryValueExW returned %d\n", rc);
        goto end;
    }
    /* FIXME: sanity-check sz before allocating (is there an upper-limit
     * on the value of a property?)
     */
    value = FUNC15( sz );
    rc = FUNC9(key, deformatted, NULL, &regType, value, &sz);
    if (rc)
    {
        FUNC10("RegQueryValueExW returned %d\n", rc);
        goto end;
    }

    /* bail out if the registry key is empty */
    if (sz == 0)
        goto end;

    /* expand if needed */
    if (regType == REG_EXPAND_SZ)
    {
        sz = FUNC2((LPCWSTR)value, NULL, 0);
        if (sz)
        {
            LPWSTR buf = FUNC15(sz * sizeof(WCHAR));
            FUNC2((LPCWSTR)value, buf, sz);
            FUNC16(value);
            value = (LPBYTE)buf;
        }
    }

    if ((regType == REG_SZ || regType == REG_EXPAND_SZ) &&
        (ptr = FUNC18((LPWSTR)value, '"')) && (end = FUNC18(++ptr, '"')))
        *end = '\0';
    else
        ptr = (LPWSTR)value;

    switch (type & 0x0f)
    {
    case msidbLocatorTypeDirectory:
        FUNC1(package, sig, ptr, 0, appValue);
        break;
    case msidbLocatorTypeFileName:
        *appValue = FUNC12(ptr, sig);
        break;
    case msidbLocatorTypeRawValue:
        FUNC0(regType, value, sz, appValue);
        break;
    default:
        FUNC3("unimplemented for type %d (key path %s, value %s)\n",
              type, FUNC13(keyPath), FUNC13(valueName));
    }
end:
    FUNC16( value );
    FUNC7( key );
    FUNC16( deformatted );

    FUNC17(&row->hdr);
    return ERROR_SUCCESS;
}