
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HIMAGELIST ;
typedef int BOOL ;


 int ILCF_MOVE ;
 int ILC_COLOR ;
 int createImageList (int,int) ;
 int ok (int,char*,...) ;
 int pImageList_Copy (int ,int ,int ,int,int ) ;
 int pImageList_Create (int,int,int ,int,int) ;
 int pImageList_Destroy (int ) ;
 int pImageList_GetImageCount (int ) ;

__attribute__((used)) static void test_copy(void)
{
    HIMAGELIST dst, src;
    BOOL ret;
    int count;

    dst = pImageList_Create(5, 11, ILC_COLOR, 1, 1);
    count = pImageList_GetImageCount(dst);
    ok(!count, "ImageList not empty.\n");
    src = createImageList(7, 13);
    count = pImageList_GetImageCount(src);
    ok(count > 2, "Tests need an ImageList with more than 2 images\n");


    ret = pImageList_Copy(dst, 0, src, 2, ILCF_MOVE);
    ok(!ret, "ImageList_Copy() should have returned FALSE\n");
    count = pImageList_GetImageCount(dst);
    ok(count == 0, "Expected no image in dst ImageList, got %d\n", count);

    pImageList_Destroy(dst);
    pImageList_Destroy(src);
}
