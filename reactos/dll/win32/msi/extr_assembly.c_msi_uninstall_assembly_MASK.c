#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_12__ {scalar_t__ attributes; int /*<<< orphan*/  installed; int /*<<< orphan*/  display_name; int /*<<< orphan*/ * clr_version; scalar_t__ application; scalar_t__ feature; } ;
struct TYPE_11__ {TYPE_4__* assembly; } ;
struct TYPE_10__ {void* Action; } ;
struct TYPE_9__ {int /*<<< orphan*/ ** cache_net; int /*<<< orphan*/ * cache_sxs; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSIFEATURE ;
typedef  TYPE_3__ MSICOMPONENT ;
typedef  TYPE_4__ MSIASSEMBLY ;
typedef  int /*<<< orphan*/  IAssemblyCache ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 unsigned int CLR_VERSION_MAX ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* INSTALLSTATE_ABSENT ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ msidbAssemblyAttributesWin32 ; 

UINT FUNC6( MSIPACKAGE *package, MSICOMPONENT *comp )
{
    HRESULT hr;
    IAssemblyCache *cache;
    MSIASSEMBLY *assembly = comp->assembly;
    MSIFEATURE *feature = NULL;

    if (comp->assembly->feature)
        feature = FUNC5( package, comp->assembly->feature );

    if (assembly->application)
    {
        if (feature) feature->Action = INSTALLSTATE_ABSENT;
        return ERROR_SUCCESS;
    }
    FUNC2("removing %s\n", FUNC4(assembly->display_name));

    if (assembly->attributes == msidbAssemblyAttributesWin32)
    {
        cache = package->cache_sxs;
        hr = FUNC1( cache, 0, assembly->display_name, NULL, NULL );
        if (FUNC0( hr )) FUNC3("failed to uninstall assembly 0x%08x\n", hr);
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
                hr = FUNC1( cache, 0, assembly->display_name, NULL, NULL );
                if (FUNC0( hr )) FUNC3("failed to uninstall assembly 0x%08x\n", hr);
            }
        }
    }
    if (feature) feature->Action = INSTALLSTATE_ABSENT;
    assembly->installed = FALSE;
    return ERROR_SUCCESS;
}