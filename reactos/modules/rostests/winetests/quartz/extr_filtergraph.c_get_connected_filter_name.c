
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * ppPins; } ;
typedef TYPE_1__ TestFilterImpl ;
struct TYPE_9__ {int achName; int pGraph; } ;
struct TYPE_8__ {int pFilter; } ;
typedef TYPE_2__ PIN_INFO ;
typedef int IPin ;
typedef scalar_t__ HRESULT ;
typedef TYPE_3__ FILTER_INFO ;


 int CP_ACP ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ E_NOTIMPL ;
 scalar_t__ GetLastError () ;
 scalar_t__ IBaseFilter_QueryFilterInfo (int ,TYPE_3__*) ;
 int IBaseFilter_Release (int ) ;
 int IFilterGraph_Release (int ) ;
 scalar_t__ IPin_ConnectedTo (int ,int **) ;
 scalar_t__ IPin_QueryPinInfo (int *,TYPE_2__*) ;
 int IPin_Release (int *) ;
 int MAX_FILTER_NAME ;
 scalar_t__ S_OK ;
 int SetLastError (int) ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int ,int *,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static HRESULT get_connected_filter_name(TestFilterImpl *pFilter, char *FilterName)
{
    IPin *pin = ((void*)0);
    PIN_INFO pinInfo;
    FILTER_INFO filterInfo;
    HRESULT hr;

    FilterName[0] = 0;

    hr = IPin_ConnectedTo(pFilter->ppPins[0], &pin);
    ok(hr == S_OK, "IPin_ConnectedTo failed with %x\n", hr);

    hr = IPin_QueryPinInfo(pin, &pinInfo);
    ok(hr == S_OK, "IPin_QueryPinInfo failed with %x\n", hr);
    IPin_Release(pin);

    SetLastError(0xdeadbeef);
    hr = IBaseFilter_QueryFilterInfo(pinInfo.pFilter, &filterInfo);
    if (hr == S_OK && GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        IBaseFilter_Release(pinInfo.pFilter);
        return E_NOTIMPL;
    }
    ok(hr == S_OK, "IBaseFilter_QueryFilterInfo failed with %x\n", hr);
    IBaseFilter_Release(pinInfo.pFilter);

    IFilterGraph_Release(filterInfo.pGraph);

    WideCharToMultiByte(CP_ACP, 0, filterInfo.achName, -1, FilterName, MAX_FILTER_NAME, ((void*)0), ((void*)0));

    return S_OK;
}
