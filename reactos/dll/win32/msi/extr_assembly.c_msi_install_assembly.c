
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_15__ {int * TargetPath; } ;
struct TYPE_14__ {scalar_t__ attributes; int installed; int manifest; scalar_t__ application; scalar_t__ feature; } ;
struct TYPE_13__ {int KeyPath; TYPE_4__* assembly; } ;
struct TYPE_12__ {void* Action; } ;
struct TYPE_11__ {int ** cache_net; int * cache_sxs; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSIFEATURE ;
typedef TYPE_3__ MSICOMPONENT ;
typedef TYPE_4__ MSIASSEMBLY ;
typedef int IAssemblyCache ;
typedef scalar_t__ HRESULT ;


 int ERR (char*,int ,scalar_t__) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 scalar_t__ IAssemblyCache_InstallAssembly (int *,int ,int const*,int *) ;
 void* INSTALLSTATE_LOCAL ;
 scalar_t__ S_OK ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int WARN (char*) ;
 int debugstr_w (int const*) ;
 size_t get_clr_version (int const*) ;
 TYPE_2__* msi_get_loaded_feature (TYPE_1__*,scalar_t__) ;
 TYPE_7__* msi_get_loaded_file (TYPE_1__*,int ) ;
 scalar_t__ msidbAssemblyAttributesWin32 ;

UINT msi_install_assembly( MSIPACKAGE *package, MSICOMPONENT *comp )
{
    HRESULT hr;
    const WCHAR *manifest;
    IAssemblyCache *cache;
    MSIASSEMBLY *assembly = comp->assembly;
    MSIFEATURE *feature = ((void*)0);

    if (comp->assembly->feature)
        feature = msi_get_loaded_feature( package, comp->assembly->feature );

    if (assembly->application)
    {
        if (feature) feature->Action = INSTALLSTATE_LOCAL;
        return ERROR_SUCCESS;
    }
    if (assembly->attributes == msidbAssemblyAttributesWin32)
    {
        if (!assembly->manifest)
        {
            WARN("no manifest\n");
            return ERROR_FUNCTION_FAILED;
        }
        manifest = msi_get_loaded_file( package, assembly->manifest )->TargetPath;
        cache = package->cache_sxs;
    }
    else
    {
        manifest = msi_get_loaded_file( package, comp->KeyPath )->TargetPath;
        cache = package->cache_net[get_clr_version( manifest )];
        if (!cache) return ERROR_SUCCESS;
    }
    TRACE("installing assembly %s\n", debugstr_w(manifest));

    hr = IAssemblyCache_InstallAssembly( cache, 0, manifest, ((void*)0) );
    if (hr != S_OK)
    {
        ERR("Failed to install assembly %s (0x%08x)\n", debugstr_w(manifest), hr);
        return ERROR_FUNCTION_FAILED;
    }
    if (feature) feature->Action = INSTALLSTATE_LOCAL;
    assembly->installed = TRUE;
    return ERROR_SUCCESS;
}
