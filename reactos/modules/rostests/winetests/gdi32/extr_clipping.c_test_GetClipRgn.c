
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HRGN ;
typedef int * HDC ;


 int COMPLEXREGION ;
 int * CreateRectRgn (int,int,int,int) ;
 int DeleteObject (int *) ;
 int EqualRgn (int *,int *) ;
 int GetClipRgn (int *,int *) ;
 int * GetDC (int *) ;
 int GetSystemMetrics (int ) ;
 int NULLREGION ;
 int ReleaseDC (int *,int *) ;
 int SIMPLEREGION ;
 int SM_CMONITORS ;
 int SelectClipRgn (int *,int *) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_GetClipRgn(void)
{
    HDC hdc;
    HRGN hrgn, hrgn2, hrgn3, hrgn4;
    int ret;


    ret = GetClipRgn(((void*)0), ((void*)0));
    ok(ret == -1, "Expected GetClipRgn to return -1, got %d\n", ret);

    hdc = GetDC(((void*)0));
    ok(hdc != ((void*)0), "Expected GetDC to return a valid device context handle\n");


    ret = GetClipRgn(hdc, ((void*)0));
    ok(ret == 0 ||
       ret == -1 ,
       "Expected GetClipRgn to return 0, got %d\n", ret);


    hrgn = CreateRectRgn(100, 100, 100, 100);
    ok(hrgn != ((void*)0),
       "Expected CreateRectRgn to return a handle to a new rectangular region\n");

    hrgn2 = CreateRectRgn(1, 2, 3, 4);
    ok(hrgn2 != ((void*)0),
       "Expected CreateRectRgn to return a handle to a new rectangular region\n");

    hrgn3 = CreateRectRgn(1, 2, 3, 4);
    ok(hrgn3 != ((void*)0),
       "Expected CreateRectRgn to return a handle to a new rectangular region\n");

    hrgn4 = CreateRectRgn(1, 2, 3, 4);
    ok(hrgn4 != ((void*)0),
       "Expected CreateRectRgn to return a handle to a new rectangular region\n");



    ret = GetClipRgn(hdc, hrgn2);
    ok(ret == 0, "Expected GetClipRgn to return 0, got %d\n", ret);


    ret = EqualRgn(hrgn2, hrgn3);
    ok(ret == 1,
       "Expected EqualRgn to compare the two regions as equal, got %d\n", ret);


    ret = SelectClipRgn(hdc, hrgn);
    ok(ret == NULLREGION,
       "Expected SelectClipRgn to return NULLREGION, got %d\n", ret);



    ret = GetClipRgn(hdc, ((void*)0));
    ok(ret == -1, "Expected GetClipRgn to return -1, got %d\n", ret);

    ret = GetClipRgn(hdc, hrgn2);
    ok(ret == 1, "Expected GetClipRgn to return 1, got %d\n", ret);

    ret = EqualRgn(hrgn, hrgn2);
    ok(ret == 1,
       "Expected EqualRgn to compare the two regions as equal, got %d\n", ret);


    ret = SelectClipRgn(hdc, ((void*)0));
    ok(ret == SIMPLEREGION || (ret == COMPLEXREGION && GetSystemMetrics(SM_CMONITORS) > 1),
       "Expected SelectClipRgn to return SIMPLEREGION, got %d\n", ret);

    ret = GetClipRgn(hdc, ((void*)0));
    ok(ret == 0 ||
       ret == -1 ,
       "Expected GetClipRgn to return 0, got %d\n", ret);

    ret = GetClipRgn(hdc, hrgn3);
    ok(ret == 0, "Expected GetClipRgn to return 0, got %d\n", ret);

    ret = EqualRgn(hrgn3, hrgn4);
    ok(ret == 1,
       "Expected EqualRgn to compare the two regions as equal, got %d\n", ret);

    DeleteObject(hrgn4);
    DeleteObject(hrgn3);
    DeleteObject(hrgn2);
    DeleteObject(hrgn);
    ReleaseDC(((void*)0), hdc);
}
