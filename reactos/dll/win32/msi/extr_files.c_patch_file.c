
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_8__ {int * path; TYPE_1__* File; } ;
struct TYPE_7__ {int db; } ;
struct TYPE_6__ {int * TargetPath; } ;
typedef TYPE_2__ MSIPACKAGE ;
typedef TYPE_3__ MSIFILEPATCH ;


 scalar_t__ ApplyPatchToFileW (int *,int *,int *,int ) ;
 int DeleteFileW (int *) ;
 int ERROR_INSTALL_FAILURE ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 int MoveFileW (int *,int *) ;
 int WARN (char*,int ,int ) ;
 int debugstr_w (int *) ;
 int * msi_create_temp_file (int ) ;
 int msi_free (int *) ;

__attribute__((used)) static UINT patch_file( MSIPACKAGE *package, MSIFILEPATCH *patch )
{
    UINT r = ERROR_SUCCESS;
    WCHAR *tmpfile = msi_create_temp_file( package->db );

    if (!tmpfile) return ERROR_INSTALL_FAILURE;
    if (ApplyPatchToFileW( patch->path, patch->File->TargetPath, tmpfile, 0 ))
    {
        DeleteFileW( patch->File->TargetPath );
        MoveFileW( tmpfile, patch->File->TargetPath );
    }
    else
    {
        WARN("failed to patch %s: %08x\n", debugstr_w(patch->File->TargetPath), GetLastError());
        r = ERROR_INSTALL_FAILURE;
    }
    DeleteFileW( patch->path );
    DeleteFileW( tmpfile );
    msi_free( tmpfile );
    return r;
}
