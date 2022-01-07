
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IMMEndpoint ;
typedef int IMMDevice ;
typedef int HRESULT ;
typedef scalar_t__ EDataFlow ;
typedef scalar_t__ DWORD ;


 scalar_t__ DEVICE_STATE_ACTIVE ;
 scalar_t__ FAILED (int ) ;
 int IID_IMMEndpoint ;
 int IMMDevice_GetState (int *,scalar_t__*) ;
 int IMMDevice_QueryInterface (int *,int *,void**) ;
 int IMMEndpoint_GetDataFlow (int *,scalar_t__*) ;
 int IMMEndpoint_Release (int *) ;
 scalar_t__ eRender ;

__attribute__((used)) static bool DeviceIsRender(IMMDevice *dev)
{
    void *pv;

    if (FAILED(IMMDevice_QueryInterface(dev, &IID_IMMEndpoint, &pv)))
        return 0;

    IMMEndpoint *ep = pv;
    EDataFlow flow;
    HRESULT hr = IMMEndpoint_GetDataFlow(ep, &flow);

    IMMEndpoint_Release(ep);
    if (FAILED(hr) || flow != eRender)
        return 0;

    DWORD pdwState;
    hr = IMMDevice_GetState(dev, &pdwState);
    return !FAILED(hr) && pdwState == DEVICE_STATE_ACTIVE;
}
