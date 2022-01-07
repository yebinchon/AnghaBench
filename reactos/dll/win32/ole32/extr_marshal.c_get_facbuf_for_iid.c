
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int LPVOID ;
typedef int IPSFactoryBuffer ;
typedef scalar_t__ HRESULT ;
typedef int CLSID ;


 int CLSCTX_INPROC_SERVER ;
 scalar_t__ CoGetClassObject (int *,int,int *,int *,int *) ;
 scalar_t__ CoGetPSClsid (int ,int *) ;
 int IID_IPSFactoryBuffer ;
 scalar_t__ S_OK ;
 int WINE_CLSCTX_DONT_HOST ;

__attribute__((used)) static inline HRESULT get_facbuf_for_iid(REFIID riid, IPSFactoryBuffer **facbuf)
{
    HRESULT hr;
    CLSID clsid;

    hr = CoGetPSClsid(riid, &clsid);
    if (hr != S_OK)
        return hr;
    return CoGetClassObject(&clsid, CLSCTX_INPROC_SERVER | WINE_CLSCTX_DONT_HOST,
        ((void*)0), &IID_IPSFactoryBuffer, (LPVOID*)facbuf);
}
