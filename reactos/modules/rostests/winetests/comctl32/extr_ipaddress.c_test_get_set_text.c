
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int HWND ;
typedef int CHAR ;


 int ARRAY_SIZE (int *) ;
 int DestroyWindow (int ) ;
 int GetWindowTextA (int ,int *,int ) ;
 int IPM_SETADDRESS ;
 int MAKEIPADDRESS (int,int ,int ,int) ;
 int SendMessageA (int ,int ,int ,int ) ;
 int create_ipaddress_control () ;
 int expect (int,int ) ;
 int ok (int,char*,int *) ;
 scalar_t__ strcmp (int *,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_get_set_text(void)
{
    HWND hwnd;
    CHAR ip[16];
    INT r;

    hwnd = create_ipaddress_control();
    if (!hwnd)
    {
        win_skip("IPAddress control not implemented\n");
        return;
    }


    r = GetWindowTextA(hwnd, ip, ARRAY_SIZE(ip));
    expect(7, r);
    ok(strcmp(ip, "0.0.0.0") == 0, "Expected null IP address, got %s\n", ip);

    SendMessageA(hwnd, IPM_SETADDRESS, 0, MAKEIPADDRESS(127, 0, 0, 1));
    r = GetWindowTextA(hwnd, ip, ARRAY_SIZE(ip));
    expect(9, r);
    ok(strcmp(ip, "127.0.0.1") == 0, "Expected 127.0.0.1, got %s\n", ip);

    DestroyWindow(hwnd);
}
