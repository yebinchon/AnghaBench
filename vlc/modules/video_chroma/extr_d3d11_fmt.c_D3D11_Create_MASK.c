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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_3__ {int /*<<< orphan*/  hdll; int /*<<< orphan*/  compiler_dll; void* OurD3DCompile; } ;
typedef  TYPE_1__ d3d11_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

int FUNC7(vlc_object_t *obj, d3d11_handle_t *hd3d, bool with_shaders)
{
#if !VLC_WINSTORE_APP
    hd3d->hdll = FUNC3(FUNC4("D3D11.DLL"));
    if (!hd3d->hdll)
    {
        FUNC6(obj, "cannot load d3d11.dll, aborting");
        return VLC_EGENERIC;
    }

    if (with_shaders)
    {
        hd3d->compiler_dll = FUNC0();
        if (!hd3d->compiler_dll) {
            FUNC5(obj, "cannot load d3dcompiler.dll, aborting");
            FUNC1(hd3d->hdll);
            return VLC_EGENERIC;
        }

        hd3d->OurD3DCompile = (void *)FUNC2(hd3d->compiler_dll, "D3DCompile");
        if (!hd3d->OurD3DCompile) {
            FUNC5(obj, "Cannot locate reference to D3DCompile in d3dcompiler DLL");
            FUNC1(hd3d->compiler_dll);
            FUNC1(hd3d->hdll);
            return VLC_EGENERIC;
        }
    }
#endif
    return VLC_SUCCESS;
}