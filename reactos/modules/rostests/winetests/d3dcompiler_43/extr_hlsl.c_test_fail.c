
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDirect3DVertexShader9 ;
typedef int IDirect3DVertexBuffer9 ;
typedef int IDirect3DDevice9 ;
typedef int ID3D10Blob ;
typedef int HRESULT ;


 unsigned int ARRAY_SIZE (char const**) ;
 int E_FAIL ;
 int ID3D10Blob_Release (int *) ;
 int ok (int,char*,unsigned int,...) ;
 int ppD3DCompile (char const*,int ,int *,int *,int *,char*,char*,int ,int ,int **,int **) ;
 int strlen (char const*) ;

__attribute__((used)) static void test_fail(IDirect3DDevice9 *device, IDirect3DVertexBuffer9 *qquad_geometry,
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

    for (i = 0; i < ARRAY_SIZE(tests); ++i)
    {
        compiled = errors = ((void*)0);
        hr = ppD3DCompile(tests[i], strlen(tests[i]), ((void*)0), ((void*)0), ((void*)0), "test", "ps_2_0", 0, 0, &compiled, &errors);
        ok(hr == E_FAIL, "Test %u, got unexpected hr %#x.\n", i, hr);
        ok(!!errors, "Test %u, expected non-NULL error blob.\n", i);
        ok(!compiled, "Test %u, expected no compiled shader blob.\n", i);
        ID3D10Blob_Release(errors);
    }
}
