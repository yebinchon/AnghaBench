#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_15__ {int /*<<< orphan*/ * TargetPath; } ;
struct TYPE_14__ {scalar_t__ attributes; int /*<<< orphan*/  installed; int /*<<< orphan*/  manifest; scalar_t__ application; scalar_t__ feature; } ;
struct TYPE_13__ {int /*<<< orphan*/  KeyPath; TYPE_4__* assembly; } ;
struct TYPE_12__ {void* Action; } ;
struct TYPE_11__ {int /*<<< orphan*/ ** cache_net; int /*<<< orphan*/ * cache_sxs; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSIFEATURE ;
typedef  TYPE_3__ MSICOMPONENT ;
typedef  TYPE_4__ MSIASSEMBLY ;
typedef  int /*<<< orphan*/  IAssemblyCache ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 void* INSTALLSTATE_LOCAL ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 size_t FUNC5 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,scalar_t__) ; 
 TYPE_7__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ msidbAssemblyAttributesWin32 ; 

UINT FUNC8( MSIPACKAGE *package, MSICOMPONENT *comp )
{
    HRESULT hr;
    const WCHAR *manifest;
    IAssemblyCache *cache;
    MSIASSEMBLY *assembly = comp->assembly;
    MSIFEATURE *feature = NULL;

    if (comp->assembly->feature)
        feature = FUNC6( package, comp->assembly->feature );

    if (assembly->application)
    {
        if (feature) feature->Action = INSTALLSTATE_LOCAL;
        return ERROR_SUCCESS;
    }
    if (assembly->attributes == msidbAssemblyAttributesWin32)
    {
        if (!assembly->manifest)
        {
            FUNC3("no manifest\n");
            return ERROR_FUNCTION_FAILED;
        }
        manifest = FUNC7( package, assembly->manifest )->TargetPath;
        cache = package->cache_sxs;
    }
    else
    {
        manifest = FUNC7( package, comp->KeyPath )->TargetPath;
        cache = package->cache_net[FUNC5( manifest )];
        if (!cache) return ERROR_SUCCESS;
    }
    FUNC2("installing assembly %s\n", FUNC4(manifest));

    hr = FUNC1( cache, 0, manifest, NULL );
    if (hr != S_OK)
    {
        FUNC0("Failed to install assembly %s (0x%08x)\n", FUNC4(manifest), hr);
        return ERROR_FUNCTION_FAILED;
    }
    if (feature) feature->Action = INSTALLSTATE_LOCAL;
    assembly->installed = TRUE;
    return ERROR_SUCCESS;
}