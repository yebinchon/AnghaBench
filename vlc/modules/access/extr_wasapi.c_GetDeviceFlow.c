
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IMMEndpoint ;
typedef int IMMDevice ;
typedef int EDataFlow ;


 scalar_t__ FAILED (int ) ;
 int IID_IMMEndpoint ;
 int IMMDevice_QueryInterface (int *,int *,void**) ;
 int IMMEndpoint_GetDataFlow (int *,int*) ;
 int IMMEndpoint_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int eAll ;

__attribute__((used)) static EDataFlow GetDeviceFlow(IMMDevice *dev)
{
    void *pv;

    if (FAILED(IMMDevice_QueryInterface(dev, &IID_IMMEndpoint, &pv)))
        return 0;

    IMMEndpoint *ep = pv;
    EDataFlow flow;

    if (SUCCEEDED(IMMEndpoint_GetDataFlow(ep, &flow)))
        flow = eAll;
    IMMEndpoint_Release(ep);
    return flow;
}
