
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IImageList ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HIMAGELIST ;
typedef scalar_t__ HICON ;


 scalar_t__ CreateIcon (int ,int,int,int,int,int ,int ) ;
 int DestroyIcon (scalar_t__) ;
 scalar_t__ E_INVALIDARG ;
 int IImageList_Release (int *) ;
 scalar_t__ IImageList_Remove (int *,int) ;
 scalar_t__ IImageList_ReplaceIcon (int *,int,scalar_t__,int*) ;
 int ILC_COLOR16 ;
 scalar_t__ S_OK ;
 int hinst ;
 int icon_bits ;
 int ok (int,char*,...) ;
 scalar_t__ pImageList_Create (int,int,int ,int ,int) ;

__attribute__((used)) static void test_IImageList_Add_Remove(void)
{
    IImageList *imgl;
    HIMAGELIST himl;
    HRESULT hr;

    HICON hicon1;
    HICON hicon2;
    HICON hicon3;

    int ret;


    himl = pImageList_Create(84, 84, ILC_COLOR16, 0, 3);
    ok(himl != 0,"failed to create imagelist\n");

    imgl = (IImageList *) himl;


    hicon1 = CreateIcon(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    ok(hicon1 != 0, "no hicon1\n");
    hicon2 = CreateIcon(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    ok(hicon2 != 0, "no hicon2\n");
    hicon3 = CreateIcon(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    ok(hicon3 != 0, "no hicon3\n");


    hr = IImageList_Remove(imgl, 0);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);


    hr = IImageList_Remove(imgl, -1);
    ok(hr == S_OK, "removed nonexistent icon\n");


    ret = -1;
    ok( IImageList_ReplaceIcon(imgl, -1, hicon1, &ret) == S_OK && (ret == 0),"failed to add icon1\n");
    ret = -1;
    ok( IImageList_ReplaceIcon(imgl, -1, hicon2, &ret) == S_OK && (ret == 1),"failed to add icon2\n");
    ret = -1;
    ok( IImageList_ReplaceIcon(imgl, -1, hicon3, &ret) == S_OK && (ret == 2),"failed to add icon3\n");


    ok( IImageList_Remove(imgl, 4711) == E_INVALIDARG, "got 0x%08x\n", hr);


    ok( IImageList_Remove(imgl,0) == S_OK, "can't remove 0\n");
    ok( IImageList_Remove(imgl,0) == S_OK, "can't remove 0\n");
    ok( IImageList_Remove(imgl,0) == S_OK, "can't remove 0\n");


    ok( IImageList_Remove(imgl, 0) == E_INVALIDARG, "got 0x%08x\n", hr);

    IImageList_Release(imgl);
    ok(DestroyIcon(hicon1),"icon 1 wasn't deleted\n");
    ok(DestroyIcon(hicon2),"icon 2 wasn't deleted\n");
    ok(DestroyIcon(hicon3),"icon 3 wasn't deleted\n");
}
