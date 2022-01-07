
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDirect3DPixelShader9 ;
typedef int IDirect3DDevice9 ;
typedef int ID3DXConstantTable ;
typedef int ID3D10Blob ;
typedef int HRESULT ;


 int D3DXGetShaderConstantTable (scalar_t__,int **) ;
 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ ID3D10Blob_GetBufferPointer (int *) ;
 int ID3D10Blob_Release (int *) ;
 int IDirect3DDevice9_CreatePixelShader (int *,scalar_t__,int **) ;
 int SUCCEEDED (int ) ;
 int ok (int,char*,...) ;
 int ppD3DCompile (char const*,int ,int *,int *,int *,char*,char const*,int ,int ,int **,int **) ;
 int strlen (char const*) ;

__attribute__((used)) static IDirect3DPixelShader9 *compile_pixel_shader9(IDirect3DDevice9 *device, const char *shader,
        const char *profile, ID3DXConstantTable **constants)
{
    ID3D10Blob *compiled = ((void*)0);
    ID3D10Blob *errors = ((void*)0);
    IDirect3DPixelShader9 *pshader;
    HRESULT hr;

    hr = ppD3DCompile(shader, strlen(shader), ((void*)0), ((void*)0),
            ((void*)0), "test", profile,
            0, 0, &compiled, &errors);
    ok(hr == D3D_OK, "Pixel shader %s compilation failed: %s\n", shader,
            errors ? (char *)ID3D10Blob_GetBufferPointer(errors) : "");
    if (FAILED(hr)) return ((void*)0);

    hr = D3DXGetShaderConstantTable(ID3D10Blob_GetBufferPointer(compiled), constants);
    ok(hr == D3D_OK, "Could not get constant table from compiled pixel shader\n");

    hr = IDirect3DDevice9_CreatePixelShader(device, ID3D10Blob_GetBufferPointer(compiled), &pshader);
    ok(SUCCEEDED(hr), "IDirect3DDevice9_CreatePixelShader returned: %08x\n", hr);
    ID3D10Blob_Release(compiled);
    return pshader;
}
