
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pwszVal; } ;
typedef TYPE_1__ PROPVARIANT ;
typedef int IPropertyStore ;
typedef int IMMDevice ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 char* FromWide (int ) ;
 int IMMDevice_OpenPropertyStore (int *,int ,int **) ;
 int IPropertyStore_GetValue (int *,int *,TYPE_1__*) ;
 int IPropertyStore_Release (int *) ;
 int PKEY_Device_FriendlyName ;
 int PropVariantClear (TYPE_1__*) ;
 int PropVariantInit (TYPE_1__*) ;
 int STGM_READ ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static char *DeviceGetFriendlyName(IMMDevice *dev)
{
    IPropertyStore *props;
    PROPVARIANT v;
    HRESULT hr;

    hr = IMMDevice_OpenPropertyStore(dev, STGM_READ, &props);
    if (FAILED(hr))
        return ((void*)0);

    char *name = ((void*)0);
    PropVariantInit(&v);
    hr = IPropertyStore_GetValue(props, &PKEY_Device_FriendlyName, &v);
    if (SUCCEEDED(hr))
    {
        name = FromWide(v.pwszVal);
        PropVariantClear(&v);
    }

    IPropertyStore_Release(props);

    return name;
}
