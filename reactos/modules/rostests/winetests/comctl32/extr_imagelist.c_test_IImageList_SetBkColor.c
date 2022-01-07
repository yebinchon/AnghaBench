
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IImageList ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HIMAGELIST ;
typedef scalar_t__ COLORREF ;


 scalar_t__ CLR_NONE ;
 scalar_t__ IImageList_GetBkColor (int *,scalar_t__*) ;
 int IImageList_Release (int *) ;
 scalar_t__ IImageList_SetBkColor (int *,scalar_t__,scalar_t__*) ;
 int ILC_COLOR16 ;
 scalar_t__ RGB (int ,int ,int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pImageList_Create (int,int,int ,int ,int) ;

__attribute__((used)) static void test_IImageList_SetBkColor(void)
{
    IImageList *imgl;
    HIMAGELIST himl;
    COLORREF color;
    HRESULT hr;

    himl = pImageList_Create(16, 16, ILC_COLOR16, 0, 3);
    imgl = (IImageList*)himl;

if (0)
{

    IImageList_SetBkColor(imgl, RGB(0, 0, 0), ((void*)0));
}

    hr = IImageList_SetBkColor(imgl, CLR_NONE, &color);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IImageList_SetBkColor(imgl, CLR_NONE, &color);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    color = 0xdeadbeef;
    hr = IImageList_GetBkColor(imgl, &color);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(color == CLR_NONE, "got %x\n", color);

    IImageList_Release(imgl);
}
