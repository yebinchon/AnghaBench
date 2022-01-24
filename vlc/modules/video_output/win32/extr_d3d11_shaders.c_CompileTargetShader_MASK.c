#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  d3d11_handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  d3ddevice; } ;
typedef  TYPE_1__ d3d11_device_t ;
typedef  int /*<<< orphan*/  ID3DBlob ;
typedef  int /*<<< orphan*/  ID3D11PixelShader ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC5 (char**,int /*<<< orphan*/ ,char*,char const*,char const*,char const*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  globPixelShaderDefault ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static HRESULT FUNC10(vlc_object_t *o, d3d11_handle_t *hd3d, bool legacy_shader,
                                   d3d11_device_t *d3d_dev,
                                   const char *psz_sampler,
                                   const char *psz_src_to_linear,
                                   const char *psz_primaries_transform,
                                   const char *psz_linear_to_display,
                                   const char *psz_tone_mapping,
                                   const char *psz_adjust_range, const char *psz_move_planes,
                                   ID3D11PixelShader **output)
{
    char *shader;
    int allocated = FUNC5(&shader, globPixelShaderDefault, legacy_shader ? "" : "Array",
                             psz_src_to_linear, psz_linear_to_display,
                             psz_primaries_transform, psz_tone_mapping,
                             psz_adjust_range, psz_move_planes, psz_sampler);
    if (allocated <= 0)
    {
        FUNC8(o, "no room for the Pixel Shader");
        return E_OUTOFMEMORY;
    }
    if (FUNC9(o, "verbose") >= 4)
        FUNC7(o, "shader %s", shader);
#ifndef NDEBUG
    else {
    FUNC7(o,"psz_src_to_linear %s", psz_src_to_linear);
    FUNC7(o,"psz_primaries_transform %s", psz_primaries_transform);
    FUNC7(o,"psz_tone_mapping %s", psz_tone_mapping);
    FUNC7(o,"psz_linear_to_display %s", psz_linear_to_display);
    FUNC7(o,"psz_adjust_range %s", psz_adjust_range);
    FUNC7(o,"psz_sampler %s", psz_sampler);
    FUNC7(o,"psz_move_planes %s", psz_move_planes);
    }
#endif

    ID3DBlob *pPSBlob = FUNC0(o, hd3d, d3d_dev, shader, true);
    FUNC6(shader);
    if (!pPSBlob)
        return E_INVALIDARG;

    HRESULT hr = FUNC4(d3d_dev->d3ddevice,
                                                (void *)FUNC1(pPSBlob),
                                                FUNC2(pPSBlob), NULL, output);

    FUNC3(pPSBlob);
    return hr;
}