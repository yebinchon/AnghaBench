#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  product ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int GUID_SIZE ; 
 int /*<<< orphan*/  INSTALLMESSAGE_ACTIONDATA ; 
 int /*<<< orphan*/  INSTALLPROPERTY_LANGUAGEW ; 
 int /*<<< orphan*/  INSTALLPROPERTY_VERSIONW ; 
 int /*<<< orphan*/  MSIINSTALLCONTEXT_MACHINE ; 
 int /*<<< orphan*/  MSIINSTALLCONTEXT_USERMANAGED ; 
 int /*<<< orphan*/  MSIINSTALLCONTEXT_USERUNMANAGED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int SQUASHED_GUID_SIZE ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ msidbUpgradeAttributesVersionMaxInclusive ; 
 scalar_t__ msidbUpgradeAttributesVersionMinInclusive ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC17(MSIRECORD *rec, LPVOID param)
{
    MSIPACKAGE *package = param;
    WCHAR product[SQUASHED_GUID_SIZE];
    DWORD index = 0, attributes = 0, sz = sizeof(product)/sizeof(product[0]);
    LPCWSTR upgrade_code;
    HKEY hkey = 0;
    UINT rc = ERROR_SUCCESS;
    MSIRECORD *uirow;

    upgrade_code = FUNC5(rec,1);

    rc = FUNC1(upgrade_code, &hkey, FALSE);
    if (rc != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    uirow = FUNC2(1);
    attributes = FUNC4(rec,5);

    while (rc == ERROR_SUCCESS)
    {
        rc = FUNC8(hkey, index, product, &sz, NULL, NULL, NULL, NULL);
        if (rc == ERROR_SUCCESS)
        {
            WCHAR productid[GUID_SIZE];
            LPCWSTR ver, language, action_property;
            DWORD check = 0, comp_ver, sz = 0x100;
            HKEY hukey;
            INT r;

            FUNC10("Looking at index %u product %s\n", index, FUNC13(product));

            FUNC16(product, productid);
            if (FUNC0(productid, NULL, MSIINSTALLCONTEXT_USERMANAGED, &hukey, FALSE) &&
                FUNC0(productid, NULL, MSIINSTALLCONTEXT_USERUNMANAGED, &hukey, FALSE) &&
                FUNC0(productid, NULL, MSIINSTALLCONTEXT_MACHINE, &hukey, FALSE))
            {
                FUNC10("product key not found\n");
                rc = ERROR_SUCCESS;
                index ++;
                continue;
            }

            sz = sizeof(DWORD);
            FUNC9(hukey, INSTALLPROPERTY_VERSIONW, NULL, NULL, (LPBYTE)&check, &sz);

            /* check version minimum */
            ver = FUNC5(rec,2);
            if (ver)
            {
                comp_ver = FUNC14(ver);
                r = check - comp_ver;
                if (r < 0 || (r == 0 && !(attributes & msidbUpgradeAttributesVersionMinInclusive)))
                {
                    FUNC10("version below minimum\n");
                    FUNC7(hukey);
                    index ++;
                    continue;
                }
            }

            /* check version maximum */
            ver = FUNC5(rec,3);
            if (ver)
            {
                comp_ver = FUNC14(ver);
                r = check - comp_ver;
                if (r > 0 || (r == 0 && !(attributes & msidbUpgradeAttributesVersionMaxInclusive)))
                {
                    FUNC7(hukey);
                    index ++;
                    continue;
                }
                FUNC10("version above maximum\n");
            }

            /* check language */
            sz = sizeof(DWORD);
            FUNC9(hukey, INSTALLPROPERTY_LANGUAGEW, NULL, NULL, (LPBYTE)&check, &sz);
            FUNC7(hukey);
            language = FUNC5(rec,4);
            if (!FUNC12(check, language, attributes))
            {
                index ++;
                FUNC10("language doesn't match\n");
                continue;
            }
            FUNC10("found related product\n");

            action_property = FUNC5(rec, 7);
            FUNC11(package, action_property, productid);
            FUNC6(uirow, 1, productid);
            FUNC3(package, INSTALLMESSAGE_ACTIONDATA, uirow);
        }
        index ++;
    }
    FUNC7(hkey);
    FUNC15( &uirow->hdr);
    
    return ERROR_SUCCESS;
}