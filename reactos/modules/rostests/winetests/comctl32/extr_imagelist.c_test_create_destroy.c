
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int * HIMAGELIST ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int ILC_COLOR16 ;
 int ILC_COLORDDB ;
 int ok (int,char*,...) ;
 int * pImageList_Create (int,int,int ,int,int) ;
 scalar_t__ pImageList_Destroy (int *) ;
 int pImageList_GetIconSize (int *,int*,int*) ;
 int pImageList_GetImageCount (int *) ;
 int pImageList_SetImageCount (int *,int) ;

__attribute__((used)) static void test_create_destroy(void)
{
    HIMAGELIST himl;
    INT cx, cy;
    BOOL rc;
    INT ret;


    himl = pImageList_Create(0, 0, ILC_COLOR16, 0, 3);
    ok(himl == ((void*)0), "got %p\n", himl);

    himl = pImageList_Create(0, 16, ILC_COLOR16, 0, 3);
    ok(himl == ((void*)0), "got %p\n", himl);

    himl = pImageList_Create(16, 0, ILC_COLOR16, 0, 3);
    ok(himl == ((void*)0), "got %p\n", himl);

    himl = pImageList_Create(16, -1, ILC_COLOR16, 0, 3);
    ok(himl == ((void*)0), "got %p\n", himl);

    himl = pImageList_Create(-1, 16, ILC_COLOR16, 0, 3);
    ok(himl == ((void*)0), "got %p\n", himl);

    rc = pImageList_Destroy((HIMAGELIST)0xdeadbeef);
    ok(rc == FALSE, "ImageList_Destroy(0xdeadbeef) should fail and not crash\n");


    himl = pImageList_Create(0, 14, ILC_COLORDDB, 4, 4);
    ok(himl != ((void*)0), "got %p\n", himl);

    pImageList_GetIconSize(himl, &cx, &cy);
    ok (cx == 0, "Wrong cx (%i)\n", cx);
    ok (cy == 14, "Wrong cy (%i)\n", cy);
    pImageList_Destroy(himl);

    himl = pImageList_Create(0, 0, ILC_COLORDDB, 4, 4);
    ok(himl != ((void*)0), "got %p\n", himl);
    pImageList_GetIconSize(himl, &cx, &cy);
    ok (cx == 0, "Wrong cx (%i)\n", cx);
    ok (cy == 0, "Wrong cy (%i)\n", cy);
    pImageList_Destroy(himl);

    himl = pImageList_Create(0, 0, ILC_COLORDDB, 0, 4);
    ok(himl != ((void*)0), "got %p\n", himl);
    pImageList_GetIconSize(himl, &cx, &cy);
    ok (cx == 0, "Wrong cx (%i)\n", cx);
    ok (cy == 0, "Wrong cy (%i)\n", cy);

    pImageList_SetImageCount(himl, 3);
    ret = pImageList_GetImageCount(himl);
    ok(ret == 3, "Unexpected image count after increase\n");


    pImageList_Destroy(himl);


    himl = pImageList_Create(-1, -1, ILC_COLORDDB, 4, 4);
    ok(himl == ((void*)0), "got %p\n", himl);
    himl = pImageList_Create(-1, 1, ILC_COLORDDB, 4, 4);
    ok(himl == ((void*)0), "got %p\n", himl);
    himl = pImageList_Create(1, -1, ILC_COLORDDB, 4, 4);
    ok(himl == ((void*)0), "got %p\n", himl);
}
