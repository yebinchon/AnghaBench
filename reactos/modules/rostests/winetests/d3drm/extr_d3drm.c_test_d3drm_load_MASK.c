#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dSize; int /*<<< orphan*/  lpMemory; } ;
typedef  int /*<<< orphan*/  IDirect3DRM ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  TYPE_1__ D3DRMLOADMEMORY ;

/* Variables and functions */
 int /*<<< orphan*/  D3DRMLOAD_FROMMEMORY ; 
 scalar_t__ D3DRM_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const IID_IDirect3DRMFrame ; 
 int /*<<< orphan*/  const IID_IDirect3DRMMaterial ; 
 int /*<<< orphan*/  const IID_IDirect3DRMMeshBuilder ; 
 int /*<<< orphan*/  data_d3drm_load ; 
 int nb_objects ; 
 int /*<<< orphan*/  object_load_callback ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
    HRESULT hr;
    IDirect3DRM *d3drm;
    D3DRMLOADMEMORY info;
    const GUID* req_refiids[] = { &IID_IDirect3DRMMeshBuilder, &IID_IDirect3DRMFrame, &IID_IDirect3DRMMaterial };

    hr = FUNC0(&d3drm);
    FUNC3(hr == D3DRM_OK, "Cannot get IDirect3DRM interface (hr = %x)\n", hr);

    info.lpMemory = data_d3drm_load;
    info.dSize = FUNC4(data_d3drm_load);
    hr = FUNC1(d3drm, &info, NULL, (GUID **)req_refiids, 3, D3DRMLOAD_FROMMEMORY,
            object_load_callback, (void *)0xdeadbeef, NULL, NULL, NULL);
    FUNC3(hr == D3DRM_OK, "Cannot load data (hr = %x)\n", hr);
    FUNC3(nb_objects == 3, "Should have loaded 3 objects (got %d)\n", nb_objects);

    FUNC2(d3drm);
}