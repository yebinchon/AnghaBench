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
typedef  int /*<<< orphan*/  IDirect3DVertexShader9 ;
typedef  int /*<<< orphan*/  IDirect3DVertexBuffer9 ;
typedef  int /*<<< orphan*/  IDirect3DDevice9 ;
typedef  int /*<<< orphan*/  ID3D10Blob ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 unsigned int FUNC0 (char const**) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(IDirect3DDevice9 *device, IDirect3DVertexBuffer9 *qquad_geometry,
        IDirect3DVertexShader9 *vshader_passthru)
{
    static const char *tests[] =
    {
        "float4 test(float2 pos: TEXCOORD0) : COLOR\n"
        "{\n"
        "   return y;\n"
        "}",

        "float4 test(float2 pos: TEXCOORD0) : COLOR\n"
        "{\n"
        "  float4 x = float4(0, 0, 0, 0);\n"
        "  x.xzzx = float4(1, 2, 3, 4);\n"
        "  return x;\n"
        "}",

        "float4 test(float2 pos: TEXCOORD0) : COLOR\n"
        "{\n"
        "  float4 x = pos;\n"
        "  return x;\n"
        "}",

        "float4 test(float2 pos, TEXCOORD0) ; COLOR\n"
        "{\n"
        "  pos = float4 x;\n"
        "  mul(float4(5, 4, 3, 2), mvp) = x;\n"
        "  return float4;\n"
        "}",

        "float4 563r(float2 45s: TEXCOORD0) : COLOR\n"
        "{\n"
        "  float2 x = 45s;\n"
        "  return float4(x.x, x.y, 0, 0);\n"
        "}",

        "float4 test(float2 pos: TEXCOORD0) : COLOR\n"
        "{\n"
        "   struct { int b,c; } x = {0};\n"
        "   return y;\n"
        "}",

        "float4 test(float2 pos: TEXCOORD0) : COLOR\n"
        "{\n"
        "   struct {} x = {};\n"
        "   return y;\n"
        "}",
    };

    ID3D10Blob *compiled, *errors;
    unsigned int i;
    HRESULT hr;

    for (i = 0; i < FUNC0(tests); ++i)
    {
        compiled = errors = NULL;
        hr = FUNC3(tests[i], FUNC4(tests[i]), NULL, NULL, NULL, "test", "ps_2_0", 0, 0, &compiled, &errors);
        FUNC2(hr == E_FAIL, "Test %u, got unexpected hr %#x.\n", i, hr);
        FUNC2(!!errors, "Test %u, expected non-NULL error blob.\n", i);
        FUNC2(!compiled, "Test %u, expected no compiled shader blob.\n", i);
        FUNC1(errors);
    }
}