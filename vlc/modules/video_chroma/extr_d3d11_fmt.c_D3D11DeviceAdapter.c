
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDXGIDevice ;
typedef int IDXGIAdapter ;
typedef int ID3D11Device ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int ID3D11Device_QueryInterface (int *,int *,void**) ;
 int IDXGIDevice_GetAdapter (int *,int **) ;
 int IDXGIDevice_Release (int *) ;
 int IID_IDXGIDevice ;

IDXGIAdapter *D3D11DeviceAdapter(ID3D11Device *d3ddev)
{
    IDXGIDevice *pDXGIDevice = ((void*)0);
    HRESULT hr = ID3D11Device_QueryInterface(d3ddev, &IID_IDXGIDevice, (void **)&pDXGIDevice);
    if (FAILED(hr)) {
        return ((void*)0);
    }

    IDXGIAdapter *p_adapter;
    hr = IDXGIDevice_GetAdapter(pDXGIDevice, &p_adapter);
    IDXGIDevice_Release(pDXGIDevice);
    if (FAILED(hr)) {
        return ((void*)0);
    }
    return p_adapter;
}
