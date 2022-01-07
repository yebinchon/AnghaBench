
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_VideoRenderer ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,int *) ;
 int IID_IUnknown ;
 scalar_t__ S_OK ;
 int * pVideoRenderer ;

__attribute__((used)) static int create_video_renderer(void)
{
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_VideoRenderer, ((void*)0), CLSCTX_INPROC_SERVER,
                          &IID_IUnknown, (LPVOID*)&pVideoRenderer);
    return (hr == S_OK && pVideoRenderer != ((void*)0));
}
