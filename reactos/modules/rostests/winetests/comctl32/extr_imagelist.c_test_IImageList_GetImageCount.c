
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IImageList ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HIMAGELIST ;


 scalar_t__ IImageList_GetImageCount (int *,int*) ;
 int IImageList_Release (int *) ;
 int ILC_COLOR16 ;
 scalar_t__ S_OK ;
 int ok (int,char*,int) ;
 scalar_t__ pImageList_Create (int,int,int ,int ,int) ;

__attribute__((used)) static void test_IImageList_GetImageCount(void)
{
    IImageList *imgl;
    HIMAGELIST himl;
    int count;
    HRESULT hr;

    himl = pImageList_Create(16, 16, ILC_COLOR16, 0, 3);
    imgl = (IImageList*)himl;

if (0)
{

    IImageList_GetImageCount(imgl, ((void*)0));
}

    count = -1;
    hr = IImageList_GetImageCount(imgl, &count);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(count == 0, "got %d\n", count);

    IImageList_Release(imgl);
}
