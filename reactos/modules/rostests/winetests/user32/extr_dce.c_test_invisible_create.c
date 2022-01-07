
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef scalar_t__ HDC ;


 int CreateWindowA (char*,int *,int ,int ,int,int,int,int ,int ,int ,int *) ;
 int DestroyWindow (int ) ;
 scalar_t__ GetDC (int ) ;
 int GetModuleHandleA (int ) ;
 int ReleaseDC (int ,scalar_t__) ;
 int WS_OVERLAPPED ;
 int ok (int,char*) ;

__attribute__((used)) static void test_invisible_create(void)
{
    HWND hwnd_owndc = CreateWindowA("owndc_class", ((void*)0), WS_OVERLAPPED,
                                    0, 200, 100, 100,
                                    0, 0, GetModuleHandleA(0), ((void*)0) );
    HDC dc1, dc2;

    dc1 = GetDC(hwnd_owndc);
    dc2 = GetDC(hwnd_owndc);

    ok(dc1 == dc2, "expected owndc dcs to match\n");

    ReleaseDC(hwnd_owndc, dc2);
    ReleaseDC(hwnd_owndc, dc1);
    DestroyWindow(hwnd_owndc);
}
