
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 scalar_t__ IUnknown_Release (int ) ;
 int ok (int,char*,scalar_t__) ;
 int pVideoRenderer ;

__attribute__((used)) static void release_video_renderer(void)
{
    HRESULT hr;

    hr = IUnknown_Release(pVideoRenderer);
    ok(hr == 0, "IUnknown_Release failed with %x\n", hr);
}
