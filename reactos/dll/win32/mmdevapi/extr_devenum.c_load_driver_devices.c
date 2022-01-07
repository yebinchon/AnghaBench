
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_2__ {int (* pGetEndpointIDs ) (int ,int ***,int ***,size_t*,size_t*) ;} ;
typedef int MMDevice ;
typedef int HRESULT ;
typedef int * GUID ;
typedef int EDataFlow ;


 int DEVICE_STATE_ACTIVE ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int **) ;
 int * MMDevice_Create (int *,int **,int ,int ,int) ;
 int S_OK ;
 TYPE_1__ drvs ;
 int set_format (int *) ;
 int stub1 (int ,int ***,int ***,size_t*,size_t*) ;

__attribute__((used)) static HRESULT load_driver_devices(EDataFlow flow)
{
    WCHAR **ids;
    GUID *guids;
    UINT num, def, i;
    HRESULT hr;

    if(!drvs.pGetEndpointIDs)
        return S_OK;

    hr = drvs.pGetEndpointIDs(flow, &ids, &guids, &num, &def);
    if(FAILED(hr))
        return hr;

    for(i = 0; i < num; ++i){
        MMDevice *dev;
        dev = MMDevice_Create(ids[i], &guids[i], flow, DEVICE_STATE_ACTIVE,
                def == i);
        set_format(dev);
    }

    HeapFree(GetProcessHeap(), 0, guids);
    HeapFree(GetProcessHeap(), 0, ids);

    return S_OK;
}
