
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {int * pFilter; } ;
typedef scalar_t__ (* SendPinFunc ) (int *,int ) ;
typedef TYPE_1__ PIN_INFO ;
typedef scalar_t__ PIN_DIRECTION ;
typedef int LPVOID ;
typedef int IPin ;
typedef int IEnumPins ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 scalar_t__ E_NOTIMPL ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int FIXME (char*) ;
 scalar_t__ IBaseFilter_EnumPins (int *,int **) ;
 int IBaseFilter_Release (int *) ;
 scalar_t__ IEnumPins_Next (int *,int,int **,int *) ;
 int IEnumPins_Release (int *) ;
 scalar_t__ IEnumPins_Reset (int *) ;
 int IPin_ConnectedTo (int *,int **) ;
 int IPin_QueryDirection (int *,scalar_t__*) ;
 scalar_t__ IPin_QueryInternalConnections (int *,int *,scalar_t__*) ;
 scalar_t__ IPin_QueryPinInfo (int *,TYPE_1__*) ;
 int IPin_Release (int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ VFW_E_ENUM_OUT_OF_SYNC ;
 scalar_t__ updatehres (scalar_t__,scalar_t__) ;

__attribute__((used)) static HRESULT SendFurther( IPin *from, SendPinFunc fnMiddle, LPVOID arg, SendPinFunc fnEnd )
{
    PIN_INFO pin_info;
    ULONG amount = 0;
    HRESULT hr = S_OK;
    HRESULT hr_return = S_OK;
    IEnumPins *enumpins = ((void*)0);
    BOOL foundend = TRUE;
    PIN_DIRECTION from_dir;

    IPin_QueryDirection( from, &from_dir );

    hr = IPin_QueryInternalConnections( from, ((void*)0), &amount );
    if (hr != E_NOTIMPL && amount)
        FIXME("Use QueryInternalConnections!\n");

    pin_info.pFilter = ((void*)0);
    hr = IPin_QueryPinInfo( from, &pin_info );
    if (FAILED(hr))
        goto out;

    hr = IBaseFilter_EnumPins( pin_info.pFilter, &enumpins );
    if (FAILED(hr))
        goto out;

    hr = IEnumPins_Reset( enumpins );
    while (hr == S_OK) {
        IPin *pin = ((void*)0);
        hr = IEnumPins_Next( enumpins, 1, &pin, ((void*)0) );
        if (hr == VFW_E_ENUM_OUT_OF_SYNC)
        {
            hr = IEnumPins_Reset( enumpins );
            continue;
        }
        if (pin)
        {
            PIN_DIRECTION dir;

            IPin_QueryDirection( pin, &dir );
            if (dir != from_dir)
            {
                IPin *connected = ((void*)0);

                foundend = FALSE;
                IPin_ConnectedTo( pin, &connected );
                if (connected)
                {
                    HRESULT hr_local;

                    hr_local = fnMiddle( connected, arg );
                    hr_return = updatehres( hr_return, hr_local );
                    IPin_Release(connected);
                }
            }
            IPin_Release( pin );
        }
        else
        {
            hr = S_OK;
            break;
        }
    }

    if (!foundend)
        hr = hr_return;
    else if (fnEnd) {
        HRESULT hr_local;

        hr_local = fnEnd( from, arg );
        hr_return = updatehres( hr_return, hr_local );
    }
    IEnumPins_Release(enumpins);

out:
    if (pin_info.pFilter)
        IBaseFilter_Release( pin_info.pFilter );
    return hr;
}
