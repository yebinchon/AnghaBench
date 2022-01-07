
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_9; int * member_8; int member_7; int member_6; int * member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int LPCSTR ;
typedef int HBRUSH ;


 int COLOR_BTNFACE ;
 int GetModuleHandleA (int *) ;
 int IDC_ARROW ;
 int LoadCursorA (int ,int ) ;
 int RegisterClassA (TYPE_1__*) ;
 int StyleCheckProc ;
 int assert (int ) ;
 int atomStyleCheckClass ;

__attribute__((used)) static void register_style_check_class(void)
{
    WNDCLASSA wc =
    {
        0,
        StyleCheckProc,
        0,
        0,
        GetModuleHandleA(((void*)0)),
        ((void*)0),
        LoadCursorA(0, (LPCSTR)IDC_ARROW),
        (HBRUSH)(COLOR_BTNFACE+1),
        ((void*)0),
        "WineStyleCheck",
    };

    atomStyleCheckClass = RegisterClassA(&wc);
    assert(atomStyleCheckClass);
}
