
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int MSIINSTALLCONTEXT ;
typedef int HKEY ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GUID_SIZE ;
 int INSTALLPROPERTY_LOCALPACKAGEW ;
 int INSTALLPROPERTY_PACKAGECODEW ;
 scalar_t__ MSIREG_OpenInstallProps (int const*,int ,int *,int *,int ) ;
 scalar_t__ MSIREG_OpenProductKey (int const*,int *,int ,int *,int ) ;
 int RegCloseKey (int ) ;
 int msi_free (int *) ;
 scalar_t__ msi_locate_product (int const*,int *) ;
 int * msi_reg_get_val_str (int ,int ) ;
 int strcmpiW (int const*,int *) ;
 int strcpyW (int *,int *) ;
 int unsquash_guid (int *,int *) ;

__attribute__((used)) static UINT get_registered_local_package( const WCHAR *product, const WCHAR *package, WCHAR *localfile )
{
    MSIINSTALLCONTEXT context;
    HKEY product_key, props_key;
    WCHAR *registered_package = ((void*)0), unsquashed[GUID_SIZE];
    UINT r;

    r = msi_locate_product( product, &context );
    if (r != ERROR_SUCCESS)
        return r;

    r = MSIREG_OpenProductKey( product, ((void*)0), context, &product_key, FALSE );
    if (r != ERROR_SUCCESS)
        return r;

    r = MSIREG_OpenInstallProps( product, context, ((void*)0), &props_key, FALSE );
    if (r != ERROR_SUCCESS)
    {
        RegCloseKey( product_key );
        return r;
    }
    r = ERROR_FUNCTION_FAILED;
    registered_package = msi_reg_get_val_str( product_key, INSTALLPROPERTY_PACKAGECODEW );
    if (!registered_package)
        goto done;

    unsquash_guid( registered_package, unsquashed );
    if (!strcmpiW( package, unsquashed ))
    {
        WCHAR *filename = msi_reg_get_val_str( props_key, INSTALLPROPERTY_LOCALPACKAGEW );
        if (!filename)
            goto done;

        strcpyW( localfile, filename );
        msi_free( filename );
        r = ERROR_SUCCESS;
    }
done:
    msi_free( registered_package );
    RegCloseKey( props_key );
    RegCloseKey( product_key );
    return r;
}
