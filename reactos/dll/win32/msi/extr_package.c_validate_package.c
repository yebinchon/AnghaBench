
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {scalar_t__ platform; int version; size_t num_langids; int * langids; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int LANGID ;


 size_t ERROR_INSTALL_LANGUAGE_UNSUPPORTED ;
 size_t ERROR_INSTALL_PACKAGE_INVALID ;
 size_t ERROR_INSTALL_PLATFORM_UNSUPPORTED ;
 size_t ERROR_SUCCESS ;
 int GetSystemDefaultLangID () ;
 scalar_t__ IsValidLocale (int ,int ) ;
 scalar_t__ LANG_NEUTRAL ;
 int LCID_INSTALLED ;
 int MAKELANGID (scalar_t__,scalar_t__) ;
 scalar_t__ PLATFORM_ARM ;
 scalar_t__ PLATFORM_INTEL64 ;
 scalar_t__ PLATFORM_X64 ;
 scalar_t__ PRIMARYLANGID (int ) ;
 scalar_t__ SUBLANGID (int ) ;
 scalar_t__ SUBLANG_NEUTRAL ;
 int is_64bit ;
 int is_wow64 ;

__attribute__((used)) static UINT validate_package( MSIPACKAGE *package )
{
    UINT i;

    if (package->platform == PLATFORM_INTEL64)
        return ERROR_INSTALL_PLATFORM_UNSUPPORTED;

    if (package->platform == PLATFORM_ARM)
        return ERROR_INSTALL_PLATFORM_UNSUPPORTED;

    if (package->platform == PLATFORM_X64)
    {
        if (!is_64bit && !is_wow64)
            return ERROR_INSTALL_PLATFORM_UNSUPPORTED;
        if (package->version < 200)
            return ERROR_INSTALL_PACKAGE_INVALID;
    }
    if (!package->num_langids)
    {
        return ERROR_SUCCESS;
    }
    for (i = 0; i < package->num_langids; i++)
    {
        LANGID langid = package->langids[i];

        if (PRIMARYLANGID( langid ) == LANG_NEUTRAL)
        {
            langid = MAKELANGID( PRIMARYLANGID( GetSystemDefaultLangID() ), SUBLANGID( langid ) );
        }
        if (SUBLANGID( langid ) == SUBLANG_NEUTRAL)
        {
            langid = MAKELANGID( PRIMARYLANGID( langid ), SUBLANGID( GetSystemDefaultLangID() ) );
        }
        if (IsValidLocale( langid, LCID_INSTALLED ))
            return ERROR_SUCCESS;
    }
    return ERROR_INSTALL_LANGUAGE_UNSUPPORTED;
}
