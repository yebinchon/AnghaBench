
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IImageList ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HIMAGELIST ;


 int IID_IImageList ;
 scalar_t__ IImageList_Clone (int *,int *,void**) ;
 scalar_t__ IImageList_Release (int *) ;
 int ILC_COLOR16 ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pImageList_Create (int,int,int ,int ,int) ;

__attribute__((used)) static void test_IImageList_Clone(void)
{
    IImageList *imgl, *imgl2;
    HIMAGELIST himl;
    HRESULT hr;
    ULONG ref;

    himl = pImageList_Create(16, 16, ILC_COLOR16, 0, 3);
    imgl = (IImageList*)himl;

if (0)
{

    IImageList_Clone(imgl, &IID_IImageList, ((void*)0));
}

    hr = IImageList_Clone(imgl, &IID_IImageList, (void**)&imgl2);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ref = IImageList_Release(imgl2);
    ok(ref == 0, "got %u\n", ref);

    IImageList_Release(imgl);
}
