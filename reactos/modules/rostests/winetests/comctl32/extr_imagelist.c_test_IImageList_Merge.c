
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IImageList ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;
typedef int * HIMAGELIST ;
typedef int * HICON ;


 int * CreateIcon (int ,int,int,int,int,int ,int ) ;
 int DestroyIcon (int *) ;
 int DestroyWindow (int ) ;
 int IID_IImageList ;
 scalar_t__ IImageList_Merge (int *,int,int *,int,int,int,int *,void**) ;
 int IImageList_Release (int *) ;
 scalar_t__ IImageList_ReplaceIcon (int *,int,int *,int*) ;
 scalar_t__ S_OK ;
 int create_window () ;
 int hinst ;
 int icon_bits ;
 int ok (int,char*) ;
 int * pImageList_Create (int,int,int ,int ,int) ;

__attribute__((used)) static void test_IImageList_Merge(void)
{
    HIMAGELIST himl1, himl2;
    IImageList *imgl1, *imgl2, *merge;
    HICON hicon1;
    HWND hwnd = create_window();
    HRESULT hr;
    int ret;

    himl1 = pImageList_Create(32,32,0,0,3);
    ok(himl1 != ((void*)0),"failed to create himl1\n");

    himl2 = pImageList_Create(32,32,0,0,3);
    ok(himl2 != ((void*)0),"failed to create himl2\n");

    hicon1 = CreateIcon(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    ok(hicon1 != ((void*)0), "failed to create hicon1\n");

    if (!himl1 || !himl2 || !hicon1)
        return;


    imgl1 = (IImageList *) himl1;
    imgl2 = (IImageList *) himl2;

    ret = -1;
    ok( IImageList_ReplaceIcon(imgl2, -1, hicon1, &ret) == S_OK && (ret == 0),"add icon1 to himl2 failed\n");

if (0)
{

    IImageList_Merge(imgl1, -1, ((void*)0), 0, 0, 0, &IID_IImageList, (void**)&merge);
    IImageList_Merge(imgl1, -1, (IUnknown*) imgl2, 0, 0, 0, &IID_IImageList, ((void*)0));
}


    hr = IImageList_Merge(imgl1, -1, (IUnknown *) imgl2, 0, 0, 0, &IID_IImageList, (void **) &merge);
    ok(hr == S_OK, "merge himl1,-1 failed\n");
    if (hr == S_OK) IImageList_Release(merge);

    hr = IImageList_Merge(imgl1, 0, (IUnknown *) imgl2, 0, 0, 0, &IID_IImageList, (void **) &merge);
    ok(hr == S_OK, "merge himl1,0 failed\n");
    if (hr == S_OK) IImageList_Release(merge);


    IImageList_Release(imgl2);
    himl2 = pImageList_Create(32,32,0,0,3);
    ok(himl2 != ((void*)0),"failed to recreate himl2\n");

    imgl2 = (IImageList *) himl2;

    hr = IImageList_Merge(imgl1, -1, (IUnknown *) imgl2, -1, 0, 0, &IID_IImageList, (void **) &merge);
    ok(hr == S_OK, "merge himl2,-1 failed\n");
    if (hr == S_OK) IImageList_Release(merge);

    hr = IImageList_Merge(imgl1, -1, (IUnknown *) imgl2, 0, 0, 0, &IID_IImageList, (void **) &merge);
    ok(hr == S_OK, "merge himl2,0 failed\n");
    if (hr == S_OK) IImageList_Release(merge);


    ret = -1;
    ok( IImageList_ReplaceIcon(imgl2, -1, hicon1, &ret) == S_OK && (ret == 0),"re-add icon1 to himl2 failed\n");

    hr = IImageList_Merge(imgl2, 0, (IUnknown *) imgl2, 0, 0, 0, &IID_IImageList, (void **) &merge);
    ok(hr == S_OK, "merge himl2 with itself failed\n");
    if (hr == S_OK) IImageList_Release(merge);


    ret = -1;
    ok( IImageList_ReplaceIcon(imgl1, -1, hicon1, &ret) == S_OK && (ret == 0),"add icon1 to himl1 failed\n");

    hr = IImageList_Merge(imgl1, 0, (IUnknown *) imgl2, 0, 0, 0, &IID_IImageList, (void **) &merge);
    ok(hr == S_OK, "merge himl1 with himl2 failed\n");
    if (hr == S_OK) IImageList_Release(merge);

    hr = IImageList_Merge(imgl1, 0, (IUnknown *) imgl2, 0, 8, 16, &IID_IImageList, (void **) &merge);
    ok(hr == S_OK, "merge himl1 with himl2 8,16 failed\n");
    if (hr == S_OK) IImageList_Release(merge);

    IImageList_Release(imgl1);
    IImageList_Release(imgl2);

    DestroyIcon(hicon1);
    DestroyWindow(hwnd);
}
