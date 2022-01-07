
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* lpszClassName; int lpfnWndProc; int member_0; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int HWND ;


 int CreateWindowA (char*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int DefWindowProcA ;
 int RegisterClassA (TYPE_1__*) ;

__attribute__((used)) static HWND create_window(void)
{
    WNDCLASSA wc = {0};
    wc.lpfnWndProc = DefWindowProcA;
    wc.lpszClassName = "d3d9_test_wc";
    RegisterClassA(&wc);

    return CreateWindowA("d3d9_test_wc", "d3d9_test", 0, 0, 0, 0, 0, 0, 0, 0, 0);
}
