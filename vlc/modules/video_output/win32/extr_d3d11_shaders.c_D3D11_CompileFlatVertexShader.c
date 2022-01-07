
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int d3d_vshader_t ;
typedef int d3d11_handle_t ;
typedef int d3d11_device_t ;
typedef int HRESULT ;


 int D3D11_CompileVertexShader (int *,int *,int *,int ,int *) ;
 int globVertexShaderFlat ;

HRESULT D3D11_CompileFlatVertexShader(vlc_object_t *obj, d3d11_handle_t *hd3d,
                                      d3d11_device_t *d3d_dev, d3d_vshader_t *output)
{
    return D3D11_CompileVertexShader(obj, hd3d, d3d_dev, globVertexShaderFlat, output);
}
