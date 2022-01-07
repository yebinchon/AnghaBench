
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_9__ {int display_name; } ;
struct TYPE_8__ {TYPE_1__* File; } ;
struct TYPE_7__ {int * TargetPath; } ;
typedef int MSIPACKAGE ;
typedef TYPE_2__ MSIFILEPATCH ;
typedef TYPE_3__ MSIASSEMBLY ;
typedef int IAssemblyName ;
typedef int IAssemblyEnum ;
typedef scalar_t__ HRESULT ;


 int CopyFileW (int *,int *,int ) ;
 int ERR (char*,int ,int ,int ) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 scalar_t__ E_NOT_SUFFICIENT_BUFFER ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int GetLastError () ;
 scalar_t__ IAssemblyEnum_GetNextAssembly (int *,int *,int **,int ) ;
 int IAssemblyEnum_Release (int *) ;
 scalar_t__ IAssemblyName_GetDisplayName (int *,int *,int*,int ) ;
 int IAssemblyName_Release (int *) ;
 scalar_t__ S_OK ;
 int debugstr_w (int *) ;
 int * msi_alloc (int) ;
 int * msi_create_assembly_enum (int *,int ) ;
 int msi_free (int *) ;
 int * msi_get_assembly_path (int *,int *) ;
 int patch_file (int *,TYPE_2__*) ;

__attribute__((used)) static UINT patch_assembly( MSIPACKAGE *package, MSIASSEMBLY *assembly, MSIFILEPATCH *patch )
{
    UINT r = ERROR_FUNCTION_FAILED;
    IAssemblyName *name;
    IAssemblyEnum *iter;

    if (!(iter = msi_create_assembly_enum( package, assembly->display_name )))
        return ERROR_FUNCTION_FAILED;

    while ((IAssemblyEnum_GetNextAssembly( iter, ((void*)0), &name, 0 ) == S_OK))
    {
        WCHAR *displayname, *path;
        UINT len = 0;
        HRESULT hr;

        hr = IAssemblyName_GetDisplayName( name, ((void*)0), &len, 0 );
        if (hr != E_NOT_SUFFICIENT_BUFFER || !(displayname = msi_alloc( len * sizeof(WCHAR) )))
            break;

        hr = IAssemblyName_GetDisplayName( name, displayname, &len, 0 );
        if (FAILED( hr ))
        {
            msi_free( displayname );
            break;
        }

        if ((path = msi_get_assembly_path( package, displayname )))
        {
            if (!CopyFileW( path, patch->File->TargetPath, FALSE ))
            {
                ERR("Failed to copy file %s -> %s (%u)\n", debugstr_w(path),
                    debugstr_w(patch->File->TargetPath), GetLastError() );
                msi_free( path );
                msi_free( displayname );
                IAssemblyName_Release( name );
                break;
            }
            r = patch_file( package, patch );
            msi_free( path );
        }

        msi_free( displayname );
        IAssemblyName_Release( name );
        if (r == ERROR_SUCCESS) break;
    }

    IAssemblyEnum_Release( iter );
    return r;
}
