
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int product ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef int MSIPACKAGE ;
typedef int * LPVOID ;
typedef scalar_t__ LPCWSTR ;
typedef int LPBYTE ;
typedef scalar_t__ INT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GUID_SIZE ;
 int INSTALLMESSAGE_ACTIONDATA ;
 int INSTALLPROPERTY_LANGUAGEW ;
 int INSTALLPROPERTY_VERSIONW ;
 int MSIINSTALLCONTEXT_MACHINE ;
 int MSIINSTALLCONTEXT_USERMANAGED ;
 int MSIINSTALLCONTEXT_USERUNMANAGED ;
 scalar_t__ MSIREG_OpenProductKey (int *,int *,int ,int *,int ) ;
 scalar_t__ MSIREG_OpenUpgradeCodesKey (scalar_t__,int *,int ) ;
 TYPE_1__* MSI_CreateRecord (int) ;
 int MSI_ProcessMessage (int *,int ,TYPE_1__*) ;
 scalar_t__ MSI_RecordGetInteger (TYPE_1__*,int) ;
 scalar_t__ MSI_RecordGetString (TYPE_1__*,int) ;
 int MSI_RecordSetStringW (TYPE_1__*,int,int *) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumValueW (int ,scalar_t__,int *,scalar_t__*,int *,int *,int *,int *) ;
 int RegQueryValueExW (int ,int ,int *,int *,int ,scalar_t__*) ;
 int SQUASHED_GUID_SIZE ;
 int TRACE (char*,...) ;
 int append_productcode (int *,scalar_t__,int *) ;
 int check_language (scalar_t__,scalar_t__,scalar_t__) ;
 int debugstr_w (int *) ;
 scalar_t__ msi_version_str_to_dword (scalar_t__) ;
 scalar_t__ msidbUpgradeAttributesVersionMaxInclusive ;
 scalar_t__ msidbUpgradeAttributesVersionMinInclusive ;
 int msiobj_release (int *) ;
 int unsquash_guid (int *,int *) ;

__attribute__((used)) static UINT ITERATE_FindRelatedProducts(MSIRECORD *rec, LPVOID param)
{
    MSIPACKAGE *package = param;
    WCHAR product[SQUASHED_GUID_SIZE];
    DWORD index = 0, attributes = 0, sz = sizeof(product)/sizeof(product[0]);
    LPCWSTR upgrade_code;
    HKEY hkey = 0;
    UINT rc = ERROR_SUCCESS;
    MSIRECORD *uirow;

    upgrade_code = MSI_RecordGetString(rec,1);

    rc = MSIREG_OpenUpgradeCodesKey(upgrade_code, &hkey, FALSE);
    if (rc != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    uirow = MSI_CreateRecord(1);
    attributes = MSI_RecordGetInteger(rec,5);

    while (rc == ERROR_SUCCESS)
    {
        rc = RegEnumValueW(hkey, index, product, &sz, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        if (rc == ERROR_SUCCESS)
        {
            WCHAR productid[GUID_SIZE];
            LPCWSTR ver, language, action_property;
            DWORD check = 0, comp_ver, sz = 0x100;
            HKEY hukey;
            INT r;

            TRACE("Looking at index %u product %s\n", index, debugstr_w(product));

            unsquash_guid(product, productid);
            if (MSIREG_OpenProductKey(productid, ((void*)0), MSIINSTALLCONTEXT_USERMANAGED, &hukey, FALSE) &&
                MSIREG_OpenProductKey(productid, ((void*)0), MSIINSTALLCONTEXT_USERUNMANAGED, &hukey, FALSE) &&
                MSIREG_OpenProductKey(productid, ((void*)0), MSIINSTALLCONTEXT_MACHINE, &hukey, FALSE))
            {
                TRACE("product key not found\n");
                rc = ERROR_SUCCESS;
                index ++;
                continue;
            }

            sz = sizeof(DWORD);
            RegQueryValueExW(hukey, INSTALLPROPERTY_VERSIONW, ((void*)0), ((void*)0), (LPBYTE)&check, &sz);


            ver = MSI_RecordGetString(rec,2);
            if (ver)
            {
                comp_ver = msi_version_str_to_dword(ver);
                r = check - comp_ver;
                if (r < 0 || (r == 0 && !(attributes & msidbUpgradeAttributesVersionMinInclusive)))
                {
                    TRACE("version below minimum\n");
                    RegCloseKey(hukey);
                    index ++;
                    continue;
                }
            }


            ver = MSI_RecordGetString(rec,3);
            if (ver)
            {
                comp_ver = msi_version_str_to_dword(ver);
                r = check - comp_ver;
                if (r > 0 || (r == 0 && !(attributes & msidbUpgradeAttributesVersionMaxInclusive)))
                {
                    RegCloseKey(hukey);
                    index ++;
                    continue;
                }
                TRACE("version above maximum\n");
            }


            sz = sizeof(DWORD);
            RegQueryValueExW(hukey, INSTALLPROPERTY_LANGUAGEW, ((void*)0), ((void*)0), (LPBYTE)&check, &sz);
            RegCloseKey(hukey);
            language = MSI_RecordGetString(rec,4);
            if (!check_language(check, language, attributes))
            {
                index ++;
                TRACE("language doesn't match\n");
                continue;
            }
            TRACE("found related product\n");

            action_property = MSI_RecordGetString(rec, 7);
            append_productcode(package, action_property, productid);
            MSI_RecordSetStringW(uirow, 1, productid);
            MSI_ProcessMessage(package, INSTALLMESSAGE_ACTIONDATA, uirow);
        }
        index ++;
    }
    RegCloseKey(hkey);
    msiobj_release( &uirow->hdr);

    return ERROR_SUCCESS;
}
