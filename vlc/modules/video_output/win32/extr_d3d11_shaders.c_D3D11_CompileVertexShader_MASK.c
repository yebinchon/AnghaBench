#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_8__ {int /*<<< orphan*/  layout; int /*<<< orphan*/  shader; } ;
typedef  TYPE_1__ d3d_vshader_t ;
typedef  int /*<<< orphan*/  d3d11_handle_t ;
struct TYPE_9__ {int /*<<< orphan*/  d3ddevice; } ;
typedef  TYPE_2__ d3d11_device_t ;
struct TYPE_10__ {char* member_0; int /*<<< orphan*/  member_6; int /*<<< orphan*/  const member_5; int /*<<< orphan*/  const member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/  ID3DBlob ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ D3D11_INPUT_ELEMENT_DESC ;

/* Variables and functions */
#define  D3D11_APPEND_ALIGNED_ELEMENT 131 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,char const*,int) ; 
#define  D3D11_INPUT_PER_VERTEX_DATA 130 
#define  DXGI_FORMAT_R32G32B32_FLOAT 129 
#define  DXGI_FORMAT_R32G32_FLOAT 128 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC8(vlc_object_t *obj, d3d11_handle_t *hd3d,
                                         d3d11_device_t *d3d_dev, const char *psz_shader,
                                         d3d_vshader_t *output)
{
   HRESULT hr = E_FAIL;
   ID3DBlob *pVSBlob = FUNC0(obj, hd3d, d3d_dev, psz_shader, false);
   if (!pVSBlob)
       goto error;

   hr = FUNC6(d3d_dev->d3ddevice, (void *)FUNC2(pVSBlob),
                                        FUNC3(pVSBlob), NULL, &output->shader);

   if(FUNC1(hr)) {
       FUNC7(obj, "Failed to create the flat vertex shader. (hr=0x%lX)", hr);
       goto error;
   }

   static D3D11_INPUT_ELEMENT_DESC layout[] = {
   { "POSITION", 0, DXGI_FORMAT_R32G32B32_FLOAT, 0, D3D11_APPEND_ALIGNED_ELEMENT, D3D11_INPUT_PER_VERTEX_DATA, 0},
   { "TEXCOORD", 0, DXGI_FORMAT_R32G32_FLOAT,    0, D3D11_APPEND_ALIGNED_ELEMENT, D3D11_INPUT_PER_VERTEX_DATA, 0},
   };

   hr = FUNC5(d3d_dev->d3ddevice, layout, 2, (void *)FUNC2(pVSBlob),
                                       FUNC3(pVSBlob), &output->layout);

   FUNC4(pVSBlob);
   pVSBlob = NULL;
   if(FUNC1(hr)) {
       FUNC7(obj, "Failed to create the vertex input layout. (hr=0x%lX)", hr);
       goto error;
   }

   return S_OK;
error:
   return hr;
}