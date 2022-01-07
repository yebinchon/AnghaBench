
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HDC ;


 int * CreateDCA (char*,int *,int *,int *) ;
 int DeleteDC (int *) ;
 int RestoreDC (int *,int) ;
 int SaveDC (int *) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_savedc(void)
{
    HDC hdc = CreateDCA("DISPLAY", ((void*)0), ((void*)0), ((void*)0));
    int ret;

    ok(hdc != ((void*)0), "CreateDC rets %p\n", hdc);

    ret = SaveDC(hdc);
    ok(ret == 1, "ret = %d\n", ret);
    ret = SaveDC(hdc);
    ok(ret == 2, "ret = %d\n", ret);
    ret = SaveDC(hdc);
    ok(ret == 3, "ret = %d\n", ret);
    ret = RestoreDC(hdc, -1);
    ok(ret, "ret = %d\n", ret);
    ret = SaveDC(hdc);
    ok(ret == 3, "ret = %d\n", ret);
    ret = RestoreDC(hdc, 1);
    ok(ret, "ret = %d\n", ret);
    ret = SaveDC(hdc);
    ok(ret == 1, "ret = %d\n", ret);
    ret = SaveDC(hdc);
    ok(ret == 2, "ret = %d\n", ret);
    ret = SaveDC(hdc);
    ok(ret == 3, "ret = %d\n", ret);
    ret = RestoreDC(hdc, -2);
    ok(ret, "ret = %d\n", ret);
    ret = SaveDC(hdc);
    ok(ret == 2, "ret = %d\n", ret);
    ret = RestoreDC(hdc, -2);
    ok(ret, "ret = %d\n", ret);
    ret = SaveDC(hdc);
    ok(ret == 1, "ret = %d\n", ret);
    ret = SaveDC(hdc);
    ok(ret == 2, "ret = %d\n", ret);
    ret = RestoreDC(hdc, -4);
    ok(!ret, "ret = %d\n", ret);
    ret = RestoreDC(hdc, 3);
    ok(!ret, "ret = %d\n", ret);


    ret = RestoreDC(hdc, -3);
    ok(!ret ||
       broken(ret),
       "ret = %d\n", ret);


    ret = RestoreDC(hdc, -3);
    ok(!ret, "ret = %d\n", ret);

    ret = SaveDC(hdc);
    ok(ret == 3 ||
       broken(ret == 1),
       "ret = %d\n", ret);


    ret = RestoreDC(hdc, 0);
    ok(!ret ||
       broken(ret),
       "ret = %d\n", ret);


    ret = RestoreDC(hdc, 0);
    ok(!ret, "ret = %d\n", ret);

    ret = RestoreDC(hdc, 1);
    ok(ret ||
       broken(!ret),
       "ret = %d\n", ret);

    DeleteDC(hdc);
}
