
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;
typedef int * LPVOID ;
typedef int INT_PTR ;
typedef int * HPEN ;
typedef int * HDC ;
typedef int BYTE ;
typedef int BOOL ;


 int BLACK_PEN ;
 int DeleteObject (int *) ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOACCESS ;
 int * GetCurrentObject (int *,int ) ;
 int * GetDC (int *) ;
 scalar_t__ GetLastError () ;
 int GetObjectA (int *,int,int *) ;
 int GetObjectType (int *) ;
 int * GetStockObject (int ) ;
 int OBJ_PEN ;
 int ReleaseDC (int *,int *) ;
 int * SelectObject (int *,int *) ;
 int SetLastError (int ) ;
 int UnrealizeObject (int *) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int,scalar_t__) ;

__attribute__((used)) static void test_gdi_objects(void)
{
    BYTE buff[256];
    HDC hdc = GetDC(((void*)0));
    HPEN hp;
    int i;
    BOOL ret;





    SetLastError(0);
    hp = SelectObject(((void*)0), GetStockObject(BLACK_PEN));
    ok(!hp && (GetLastError() == ERROR_INVALID_HANDLE || broken(!GetLastError())),
       "SelectObject(NULL DC) expected 0, ERROR_INVALID_HANDLE, got %p, %u\n",
       hp, GetLastError());


    SetLastError(0);
    hp = SelectObject(hdc, ((void*)0));
    ok(!hp && !GetLastError(),
       "SelectObject(NULL obj) expected 0, NO_ERROR, got %p, %u\n",
       hp, GetLastError());


    SetLastError(0);
    hp = SelectObject(hdc, GetStockObject(BLACK_PEN));
    ok(hp && !GetLastError(),
       "SelectObject(post NULL) expected non-null, NO_ERROR, got %p, %u\n",
       hp, GetLastError());


    SetLastError(0);
    hp = GetCurrentObject(((void*)0), OBJ_PEN);
    ok(!hp && !GetLastError(),
       "GetCurrentObject(NULL DC) expected 0, NO_ERROR, got %p, %u\n",
       hp, GetLastError());


    ret = DeleteObject(((void*)0));
    ok( !ret && !GetLastError(),
       "DeleteObject(NULL obj), expected 0, NO_ERROR, got %d, %u\n",
       ret, GetLastError());


    SetLastError(0);
    i = GetObjectA(((void*)0), sizeof(buff), buff);
    ok (!i && (GetLastError() == 0 || GetLastError() == ERROR_INVALID_PARAMETER),
        "GetObject(NULL obj), expected 0, NO_ERROR, got %d, %u\n",
 i, GetLastError());


    hp = SelectObject(hdc, GetStockObject(BLACK_PEN));
    SetLastError(0);
    i = GetObjectA(hp, (INT_PTR)buff, (LPVOID)sizeof(buff));
    ok (!i && (GetLastError() == 0 || GetLastError() == ERROR_NOACCESS),
        "GetObject(invalid buff), expected 0, ERROR_NOACCESS, got %d, %u\n",
    i, GetLastError());


    SetLastError(0);
    i = GetObjectType(((void*)0));
    ok (!i && GetLastError() == ERROR_INVALID_HANDLE,
        "GetObjectType(NULL obj), expected 0, ERROR_INVALID_HANDLE, got %d, %u\n",
        i, GetLastError());


    SetLastError(0);
    i = UnrealizeObject(((void*)0));
    ok (!i && !GetLastError(),
        "UnrealizeObject(NULL obj), expected 0, NO_ERROR, got %d, %u\n",
        i, GetLastError());

    ReleaseDC(((void*)0), hdc);
}
