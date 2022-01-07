
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HIMAGELIST ;


 int ILC_COLOR16 ;
 int ok (int,char*) ;
 scalar_t__ pImageList_Create (int,int,int ,int ,int) ;
 int pImageList_Destroy (scalar_t__) ;
 int pImageList_GetImageCount (scalar_t__) ;
 int pImageList_SetImageCount (scalar_t__,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_imagecount(void)
{
    HIMAGELIST himl;

    ok(0 == pImageList_GetImageCount((HIMAGELIST)0xdeadbeef), "don't crash on bad handle\n");

    if (!pImageList_SetImageCount)
    {
        win_skip("ImageList_SetImageCount not available\n");
        return;
    }

    himl = pImageList_Create(84, 84, ILC_COLOR16, 0, 3);
    ok(himl != 0, "Failed to create imagelist.\n");

    ok(pImageList_SetImageCount(himl, 3), "couldn't increase image count\n");
    ok(pImageList_GetImageCount(himl) == 3, "invalid image count after increase\n");
    ok(pImageList_SetImageCount(himl, 1), "couldn't decrease image count\n");
    ok(pImageList_GetImageCount(himl) == 1, "invalid image count after decrease to 1\n");
    ok(pImageList_SetImageCount(himl, 0), "couldn't decrease image count\n");
    ok(pImageList_GetImageCount(himl) == 0, "invalid image count after decrease to 0\n");

    ok(pImageList_Destroy(himl), "Failed to destroy imagelist.\n");
}
