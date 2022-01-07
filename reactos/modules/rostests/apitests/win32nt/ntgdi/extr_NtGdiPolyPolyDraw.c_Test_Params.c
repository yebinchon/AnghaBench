
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int ULONG ;
typedef int* PVOID ;
typedef int POINT ;
typedef int * HDC ;


 int ASSERT (int *) ;
 int * CreateCompatibleDC (int *) ;
 int ERROR_INVALID_HANDLE ;
 int ERROR_INVALID_PARAMETER ;
 int GDI_HANDLE_BASETYPE_MASK ;
 int GDI_OBJECT_TYPE_REGION ;
 int GetLastError () ;
 int NtGdiPolyPolyDraw (int *,int*,int*,int,int) ;
 int SetLastError (int ) ;
 int TEST (int) ;

__attribute__((used)) static
void
Test_Params(void)
{
    ULONG_PTR ret;
    ULONG Count1[4] = {3, 2, 4, 3};
    ULONG Count2[2] = {0, 3};
    ULONG Count3[2] = {0, 0};
    ULONG Count4[2] = {1, 3};
    ULONG Count5[2] = {0x80000001, 0x80000001};
    POINT Points[6] = {{0,0}, {1,1}, {3,-3}, {-2,2}, {4,2}, {2,4}};
    HDC hDC;

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(((void*)0), ((void*)0), ((void*)0), 0, 0);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(((void*)0), ((void*)0), ((void*)0), 0, 1);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(((void*)0), ((void*)0), ((void*)0), 0, 2);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(((void*)0), ((void*)0), ((void*)0), 0, 3);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(((void*)0), ((void*)0), ((void*)0), 0, 4);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(((void*)0), ((void*)0), ((void*)0), 0, 5);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(((void*)0), ((void*)0), ((void*)0), 0, 6);
    TEST(ret == 0);
    TEST(GetLastError() == 0);





    SetLastError(0);
    ret = NtGdiPolyPolyDraw(0, Points, Count1, 2, 1);
    TEST(ret == 0);
    TEST(GetLastError() == ERROR_INVALID_HANDLE);

    hDC = (HDC)0x12345;

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 2, 0);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 2, 1);
    TEST(ret == 0);
    TEST(GetLastError() == ERROR_INVALID_HANDLE);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 2, 2);
    TEST(ret == 0);
    TEST(GetLastError() == ERROR_INVALID_HANDLE);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 2, 3);
    TEST(ret == 0);
    TEST(GetLastError() == ERROR_INVALID_HANDLE);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 2, 4);
    TEST(ret == 0);
    TEST(GetLastError() == ERROR_INVALID_HANDLE);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 2, 5);
    TEST(ret == 0);
    TEST(GetLastError() == ERROR_INVALID_HANDLE);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 2, 6);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw((HDC)1, Points, Count1, 1, 6);
    TEST((ret & GDI_HANDLE_BASETYPE_MASK) == GDI_OBJECT_TYPE_REGION);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw((HDC)0, Points, Count1, 1, 6);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 0, 1);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count2, 2, 1);
    TEST(ret == 0);
    TEST(GetLastError() == ERROR_INVALID_HANDLE);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, ((void*)0), 2, 1);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, (PVOID)0x81000000, 2, 1);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, ((void*)0), Count1, 2, 1);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, (PVOID)0x81000000, Count1, 2, 1);
    TEST(ret == 0);
    TEST(GetLastError() == 0);






    hDC = CreateCompatibleDC(((void*)0));
    ASSERT(hDC);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 2, 0);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 2, 1);
    TEST(ret == 1);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 2, 2);
    TEST(ret == 1);
    TEST(GetLastError() == 0);
    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count2, 2, 1);
    TEST(ret == 0);
    TEST(GetLastError() == ERROR_INVALID_PARAMETER);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count3, 2, 1);
    TEST(ret == 0);
    TEST(GetLastError() == 0);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count4, 2, 1);
    TEST(ret == 0);
    TEST(GetLastError() == ERROR_INVALID_PARAMETER);

    SetLastError(0);
    ret = NtGdiPolyPolyDraw(hDC, Points, Count5, 2, 1);
    TEST(ret == 0);
    TEST(GetLastError() == 87);

}
