
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_9; int * member_8; int member_7; int member_6; int * member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int LPSTR ;
typedef int HBRUSH ;
typedef int ATOM ;


 int COLOR_BTNFACE ;
 int DefWindowProcA ;
 int GetModuleHandleA (int *) ;
 int IDC_ARROW ;
 int LoadCursorA (int *,int ) ;
 int RegisterClassA (TYPE_1__*) ;

__attribute__((used)) static ATOM register_dummy_class(void)
{
    WNDCLASSA wc =
    {
        0,
        DefWindowProcA,
        0,
        0,
        GetModuleHandleA(((void*)0)),
        ((void*)0),
        LoadCursorA(((void*)0), (LPSTR)IDC_ARROW),
        (HBRUSH)(COLOR_BTNFACE+1),
        ((void*)0),
        "WineOleTestClass",
    };

    return RegisterClassA(&wc);
}
