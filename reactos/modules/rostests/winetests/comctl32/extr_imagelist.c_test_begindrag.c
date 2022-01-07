
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x; scalar_t__ y; } ;
typedef TYPE_1__ POINT ;
typedef scalar_t__ HIMAGELIST ;
typedef scalar_t__ BOOL ;


 scalar_t__ createImageList (int,int) ;
 int ok (int,char*) ;
 scalar_t__ pImageList_BeginDrag (scalar_t__,int,int,int) ;
 int pImageList_Destroy (scalar_t__) ;
 int pImageList_EndDrag () ;
 scalar_t__ pImageList_GetDragImage (int *,TYPE_1__*) ;
 int pImageList_GetImageCount (scalar_t__) ;

__attribute__((used)) static void test_begindrag(void)
{
    HIMAGELIST himl = createImageList(7,13);
    HIMAGELIST drag;
    BOOL ret;
    int count;
    POINT hotspot;

    count = pImageList_GetImageCount(himl);
    ok(count > 2, "Tests need an ImageList with more than 2 images\n");


    ret = pImageList_BeginDrag(himl, 1, 0, 0);
    drag = pImageList_GetDragImage(((void*)0), ((void*)0));
    ok(ret && drag, "ImageList_BeginDrag() failed\n");
    ret = pImageList_BeginDrag(himl, 0, 3, 5);
    ok(!ret, "ImageList_BeginDrag() returned TRUE\n");
    drag = pImageList_GetDragImage(((void*)0), &hotspot);
    ok(!!drag, "No active ImageList drag left\n");
    ok(hotspot.x == 0 && hotspot.y == 0, "New ImageList drag was created\n");
    pImageList_EndDrag();
    drag = pImageList_GetDragImage(((void*)0), ((void*)0));
    ok(!drag, "ImageList drag was not destroyed\n");


    pImageList_BeginDrag(himl, 0, 0, 0);
    ret = pImageList_BeginDrag(himl, count, 3, 5);
    ok(!ret, "ImageList_BeginDrag() returned TRUE\n");
    drag = pImageList_GetDragImage(((void*)0), &hotspot);
    ok(drag && hotspot.x == 0 && hotspot.y == 0, "Active drag should not have been canceled\n");
    pImageList_EndDrag();
    drag = pImageList_GetDragImage(((void*)0), ((void*)0));
    ok(!drag, "ImageList drag was not destroyed\n");

    ret = pImageList_BeginDrag(himl, -17, 0, 0);
    drag = pImageList_GetDragImage(((void*)0), ((void*)0));
    ok(ret && drag, "ImageList drag was created\n");
    pImageList_EndDrag();
    ret = pImageList_BeginDrag(himl, -1, 0, 0);
    drag = pImageList_GetDragImage(((void*)0), ((void*)0));
    ok(ret && drag, "ImageList drag was created\n");
    pImageList_EndDrag();
    pImageList_Destroy(himl);
}
