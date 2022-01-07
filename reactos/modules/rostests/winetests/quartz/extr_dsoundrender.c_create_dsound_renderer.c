
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_DSoundRender ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,int *) ;
 int IID_IUnknown ;
 scalar_t__ S_OK ;
 int * pDSRender ;

__attribute__((used)) static BOOL create_dsound_renderer(void)
{
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_DSoundRender, ((void*)0), CLSCTX_INPROC_SERVER,
                          &IID_IUnknown, (LPVOID*)&pDSRender);
    return (hr == S_OK && pDSRender != ((void*)0));
}
