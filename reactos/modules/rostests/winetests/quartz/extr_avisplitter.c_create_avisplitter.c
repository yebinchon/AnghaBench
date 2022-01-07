
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_AviSplitter ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,int *) ;
 int IID_IUnknown ;
 scalar_t__ S_OK ;
 int * pAviSplitter ;

__attribute__((used)) static BOOL create_avisplitter(void)
{
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_AviSplitter, ((void*)0), CLSCTX_INPROC_SERVER,
                          &IID_IUnknown, (LPVOID*)&pAviSplitter);
    return (hr == S_OK && pAviSplitter != ((void*)0));
}
