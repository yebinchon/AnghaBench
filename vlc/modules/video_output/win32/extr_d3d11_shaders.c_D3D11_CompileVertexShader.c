
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {int layout; int shader; } ;
typedef TYPE_1__ d3d_vshader_t ;
typedef int d3d11_handle_t ;
struct TYPE_9__ {int d3ddevice; } ;
typedef TYPE_2__ d3d11_device_t ;
struct TYPE_10__ {char* member_0; int member_6; int const member_5; int const member_4; int member_3; int member_2; int member_1; } ;
typedef int ID3DBlob ;
typedef int HRESULT ;
typedef TYPE_3__ D3D11_INPUT_ELEMENT_DESC ;



 int * D3D11_CompileShader (int *,int *,TYPE_2__*,char const*,int) ;



 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ ID3D10Blob_GetBufferPointer (int *) ;
 int ID3D10Blob_GetBufferSize (int *) ;
 int ID3D10Blob_Release (int *) ;
 int ID3D11Device_CreateInputLayout (int ,TYPE_3__*,int,void*,int ,int *) ;
 int ID3D11Device_CreateVertexShader (int ,void*,int ,int *,int *) ;
 int S_OK ;
 int msg_Err (int *,char*,int ) ;

__attribute__((used)) static HRESULT D3D11_CompileVertexShader(vlc_object_t *obj, d3d11_handle_t *hd3d,
                                         d3d11_device_t *d3d_dev, const char *psz_shader,
                                         d3d_vshader_t *output)
{
   HRESULT hr = E_FAIL;
   ID3DBlob *pVSBlob = D3D11_CompileShader(obj, hd3d, d3d_dev, psz_shader, 0);
   if (!pVSBlob)
       goto error;

   hr = ID3D11Device_CreateVertexShader(d3d_dev->d3ddevice, (void *)ID3D10Blob_GetBufferPointer(pVSBlob),
                                        ID3D10Blob_GetBufferSize(pVSBlob), ((void*)0), &output->shader);

   if(FAILED(hr)) {
       msg_Err(obj, "Failed to create the flat vertex shader. (hr=0x%lX)", hr);
       goto error;
   }

   static D3D11_INPUT_ELEMENT_DESC layout[] = {
   { "POSITION", 0, 129, 0, 131, 130, 0},
   { "TEXCOORD", 0, 128, 0, 131, 130, 0},
   };

   hr = ID3D11Device_CreateInputLayout(d3d_dev->d3ddevice, layout, 2, (void *)ID3D10Blob_GetBufferPointer(pVSBlob),
                                       ID3D10Blob_GetBufferSize(pVSBlob), &output->layout);

   ID3D10Blob_Release(pVSBlob);
   pVSBlob = ((void*)0);
   if(FAILED(hr)) {
       msg_Err(obj, "Failed to create the vertex input layout. (hr=0x%lX)", hr);
       goto error;
   }

   return S_OK;
error:
   return hr;
}
