
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int HIMAGELIST ;
typedef int BOOL ;


 int ILC_COLOR16 ;
 int ok (int,char*,int) ;
 int pImageList_Create (int,int,int ,int ,int) ;
 int pImageList_Destroy (int ) ;
 int pImageList_GetIconSize (int ,int*,int*) ;

__attribute__((used)) static void test_iconsize(void)
{
    HIMAGELIST himl;
    INT cx, cy;
    BOOL ret;

    himl = pImageList_Create(16, 16, ILC_COLOR16, 0, 3);

    ret = pImageList_GetIconSize(himl, ((void*)0), ((void*)0));
    ok(!ret, "got %d\n", ret);


    cx = 0x1abe11ed;
    ret = pImageList_GetIconSize(himl, &cx, ((void*)0));
    ok(!ret, "got %d\n", ret);
    ok(cx == 0x1abe11ed, "got %d\n", cx);

    cy = 0x1abe11ed;
    ret = pImageList_GetIconSize(himl, ((void*)0), &cy);
    ok(!ret, "got %d\n", ret);
    ok(cy == 0x1abe11ed, "got %d\n", cy);

    pImageList_Destroy(himl);

    ret = pImageList_GetIconSize((HIMAGELIST)0xdeadbeef, &cx, &cy);
    ok(!ret, "got %d\n", ret);
}
