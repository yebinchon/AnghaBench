#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IDirect3DPixelShader9 ;
typedef  int /*<<< orphan*/  IDirect3DDevice9 ;
typedef  int /*<<< orphan*/  ID3DXConstantTable ;
typedef  int /*<<< orphan*/  ID3D10Blob ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  D3D_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static IDirect3DPixelShader9 *FUNC9(IDirect3DDevice9 *device, const char *shader,
        const char *profile, ID3DXConstantTable **constants)
{
    ID3D10Blob *compiled = NULL;
    ID3D10Blob *errors = NULL;
    IDirect3DPixelShader9 *pshader;
    HRESULT hr;

    hr = FUNC7(shader, FUNC8(shader), NULL, NULL,
            NULL, "test", profile, /* test is the name of the entry point of our shader */
            0, 0, &compiled, &errors);
    FUNC6(hr == D3D_OK, "Pixel shader %s compilation failed: %s\n", shader,
            errors ? (char *)FUNC2(errors) : "");
    if (FUNC1(hr)) return NULL;

    hr = FUNC0(FUNC2(compiled), constants);
    FUNC6(hr == D3D_OK, "Could not get constant table from compiled pixel shader\n");

    hr = FUNC4(device, FUNC2(compiled), &pshader);
    FUNC6(FUNC5(hr), "IDirect3DDevice9_CreatePixelShader returned: %08x\n", hr);
    FUNC3(compiled);
    return pshader;
}