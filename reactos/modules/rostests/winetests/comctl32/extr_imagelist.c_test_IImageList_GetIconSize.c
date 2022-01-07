
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IImageList ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HIMAGELIST ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ IImageList_GetIconSize (int *,int*,int*) ;
 int IImageList_Release (int *) ;
 int ILC_COLOR16 ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pImageList_Create (int,int,int ,int ,int) ;

__attribute__((used)) static void test_IImageList_GetIconSize(void)
{
    IImageList *imgl;
    HIMAGELIST himl;
    int cx, cy;
    HRESULT hr;

    himl = pImageList_Create(16, 16, ILC_COLOR16, 0, 3);
    imgl = (IImageList*)himl;

    hr = IImageList_GetIconSize(imgl, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IImageList_GetIconSize(imgl, &cx, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IImageList_GetIconSize(imgl, ((void*)0), &cy);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    IImageList_Release(imgl);
}
