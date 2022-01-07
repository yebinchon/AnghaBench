
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_3__ {scalar_t__ State; } ;
typedef int MSIPACKAGE ;
typedef TYPE_1__ MSIFOLDER ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 scalar_t__ FOLDER_STATE_CREATED ;
 scalar_t__ FOLDER_STATE_UNINITIALIZED ;
 int msi_create_full_path (int const*) ;
 TYPE_1__* msi_get_loaded_folder (int *,int const*) ;
 int * msi_get_target_folder (int *,int const*) ;

__attribute__((used)) static UINT msi_create_directory( MSIPACKAGE *package, const WCHAR *dir )
{
    MSIFOLDER *folder;
    const WCHAR *install_path;

    install_path = msi_get_target_folder( package, dir );
    if (!install_path) return ERROR_FUNCTION_FAILED;

    folder = msi_get_loaded_folder( package, dir );
    if (folder->State == FOLDER_STATE_UNINITIALIZED)
    {
        msi_create_full_path( install_path );
        folder->State = FOLDER_STATE_CREATED;
    }
    return ERROR_SUCCESS;
}
