
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int style; int cbWndExtra; int lpszClassName; scalar_t__ hbrBackground; int hCursor; scalar_t__ cbClsExtra; int lpfnWndProc; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int LPSTR ;
typedef scalar_t__ HBRUSH ;
typedef int BOOL ;


 scalar_t__ COLOR_WINDOW ;
 int CS_DBLCLKS ;
 int CS_GLOBALCLASS ;
 int CS_HREDRAW ;
 int CS_VREDRAW ;
 scalar_t__ IDC_ARROW ;
 int LoadCursorA (int ,int ) ;
 int RICHEDIT_CLASS10A ;
 int RegisterClassA (TYPE_1__*) ;
 int RichEdit10ANSIWndProc ;
 int TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static BOOL RICHED32_Register(void)
{
    WNDCLASSA wndClass;

    ZeroMemory(&wndClass, sizeof(WNDCLASSA));
    wndClass.style = CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS;
    wndClass.lpfnWndProc = RichEdit10ANSIWndProc;
    wndClass.cbClsExtra = 0;
    wndClass.cbWndExtra = sizeof(void *);
    wndClass.hCursor = LoadCursorA(0, (LPSTR)IDC_ARROW);
    wndClass.hbrBackground = (HBRUSH)(COLOR_WINDOW + 1);
    wndClass.lpszClassName = RICHEDIT_CLASS10A;

    RegisterClassA(&wndClass);

    return TRUE;
}
