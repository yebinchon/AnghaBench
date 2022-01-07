
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STDAPI ;
typedef int REFIID ;
typedef int REFCLSID ;
typedef int * LPVOID ;
typedef int HRESULT ;


 int CLASS_E_CLASSNOTAVAILABLE ;

STDAPI
DllGetClassObject(REFCLSID rclsid, REFIID riid, LPVOID *ppv)
{
    HRESULT hr;


    *ppv = ((void*)0);
    hr = CLASS_E_CLASSNOTAVAILABLE;

    return hr;
}
