
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int ProgID; TYPE_1__* CurVer; scalar_t__ IconPath; int Description; } ;
struct TYPE_5__ {scalar_t__ ProgID; } ;
typedef TYPE_2__ MSIPROGID ;
typedef scalar_t__ LPCWSTR ;
typedef int HKEY ;


 int ERR (char*,int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyW (int ,int ,int *) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int ) ;
 scalar_t__ get_clsid_of_progid (TYPE_2__ const*) ;
 int msi_reg_set_subkey_val (int ,char const*,int *,scalar_t__) ;
 int msi_reg_set_val_str (int ,int *,int ) ;
 char const* szCLSID ;
 char const* szDefaultIcon ;

__attribute__((used)) static UINT register_progid( const MSIPROGID* progid )
{
    static const WCHAR szCurVer[] = {'C','u','r','V','e','r',0};
    HKEY hkey = 0;
    UINT rc;

    rc = RegCreateKeyW( HKEY_CLASSES_ROOT, progid->ProgID, &hkey );
    if (rc == ERROR_SUCCESS)
    {
        LPCWSTR clsid = get_clsid_of_progid( progid );

        if (clsid)
            msi_reg_set_subkey_val( hkey, szCLSID, ((void*)0), clsid );
        else
            TRACE("%s has no class\n", debugstr_w( progid->ProgID ) );

        if (progid->Description)
            msi_reg_set_val_str( hkey, ((void*)0), progid->Description );

        if (progid->IconPath)
            msi_reg_set_subkey_val( hkey, szDefaultIcon, ((void*)0), progid->IconPath );


        if (progid->CurVer)
            msi_reg_set_subkey_val( hkey, szCurVer, ((void*)0), progid->CurVer->ProgID );

        RegCloseKey(hkey);
    }
    else
        ERR("failed to create key %s\n", debugstr_w( progid->ProgID ) );

    return rc;
}
