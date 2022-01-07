
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HWND ;
typedef int * HIMAGELIST ;


 int DestroyWindow (int *) ;
 int MAKELONG (int,int) ;
 int SendMessageA (int *,int ,int ,int ) ;
 int TB_GETIMAGELIST ;
 int TB_SETBITMAPSIZE ;
 int ok (int,char*,int) ;
 int rebuild_toolbar (int **) ;

__attribute__((used)) static void test_imagelist(void)
{
    HIMAGELIST imagelist;
    HWND hwnd = ((void*)0);
    int ret;

    rebuild_toolbar(&hwnd);

    imagelist = (HIMAGELIST)SendMessageA(hwnd, TB_GETIMAGELIST, 0, 0);
    ok(imagelist == ((void*)0), "got %p\n", imagelist);

    ret = SendMessageA(hwnd, TB_SETBITMAPSIZE, 0, MAKELONG(16, 16));
    ok(ret, "got %d\n", ret);

    imagelist = (HIMAGELIST)SendMessageA(hwnd, TB_GETIMAGELIST, 0, 0);
    ok(imagelist == ((void*)0), "got %p\n", imagelist);

    DestroyWindow(hwnd);
}
