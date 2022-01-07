
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int IImageList ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HIMAGELIST ;


 scalar_t__ IImageList_GetImageCount (int *,int*) ;
 int IImageList_Release (int *) ;
 scalar_t__ IImageList_SetImageCount (int *,int) ;
 int ILC_COLOR16 ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 scalar_t__ pImageList_Create (int,int,int ,int ,int) ;

__attribute__((used)) static void test_IImageList_Get_SetImageCount(void)
{
    IImageList *imgl;
    HIMAGELIST himl;
    HRESULT hr;
    INT ret;


    himl = pImageList_Create(84, 84, ILC_COLOR16, 0, 3);
    ok(himl != 0,"failed to create imagelist\n");

    imgl = (IImageList *) himl;


    hr = IImageList_SetImageCount(imgl, 3);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ret = 0;
    hr = IImageList_GetImageCount(imgl, &ret);
    ok(hr == S_OK && ret == 3, "invalid image count after increase\n");
    hr = IImageList_SetImageCount(imgl, 1);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ret = 0;
    hr = IImageList_GetImageCount(imgl, &ret);
    ok(hr == S_OK && ret == 1, "invalid image count after decrease to 1\n");
    hr = IImageList_SetImageCount(imgl, 0);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ret = -1;
    hr = IImageList_GetImageCount(imgl, &ret);
    ok(hr == S_OK && ret == 0, "invalid image count after decrease to 0\n");

    IImageList_Release(imgl);
}
