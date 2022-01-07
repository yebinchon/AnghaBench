
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_12__ {scalar_t__ attributes; int installed; int display_name; int * clr_version; scalar_t__ application; scalar_t__ feature; } ;
struct TYPE_11__ {TYPE_4__* assembly; } ;
struct TYPE_10__ {void* Action; } ;
struct TYPE_9__ {int ** cache_net; int * cache_sxs; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSIFEATURE ;
typedef TYPE_3__ MSICOMPONENT ;
typedef TYPE_4__ MSIASSEMBLY ;
typedef int IAssemblyCache ;
typedef int HRESULT ;


 unsigned int CLR_VERSION_MAX ;
 int ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IAssemblyCache_UninstallAssembly (int *,int ,int ,int *,int *) ;
 void* INSTALLSTATE_ABSENT ;
 int TRACE (char*,int ) ;
 int WARN (char*,int ) ;
 int debugstr_w (int ) ;
 TYPE_2__* msi_get_loaded_feature (TYPE_1__*,scalar_t__) ;
 scalar_t__ msidbAssemblyAttributesWin32 ;

UINT msi_uninstall_assembly( MSIPACKAGE *package, MSICOMPONENT *comp )
{
    HRESULT hr;
    IAssemblyCache *cache;
    MSIASSEMBLY *assembly = comp->assembly;
    MSIFEATURE *feature = ((void*)0);

    if (comp->assembly->feature)
        feature = msi_get_loaded_feature( package, comp->assembly->feature );

    if (assembly->application)
    {
        if (feature) feature->Action = INSTALLSTATE_ABSENT;
        return ERROR_SUCCESS;
    }
    TRACE("removing %s\n", debugstr_w(assembly->display_name));

    if (assembly->attributes == msidbAssemblyAttributesWin32)
    {
        cache = package->cache_sxs;
        hr = IAssemblyCache_UninstallAssembly( cache, 0, assembly->display_name, ((void*)0), ((void*)0) );
        if (FAILED( hr )) WARN("failed to uninstall assembly 0x%08x\n", hr);
    }
    else
    {
        unsigned int i;
        for (i = 0; i < CLR_VERSION_MAX; i++)
        {
            if (!assembly->clr_version[i]) continue;
            cache = package->cache_net[i];
            if (cache)
            {
                hr = IAssemblyCache_UninstallAssembly( cache, 0, assembly->display_name, ((void*)0), ((void*)0) );
                if (FAILED( hr )) WARN("failed to uninstall assembly 0x%08x\n", hr);
            }
        }
    }
    if (feature) feature->Action = INSTALLSTATE_ABSENT;
    assembly->installed = FALSE;
    return ERROR_SUCCESS;
}
