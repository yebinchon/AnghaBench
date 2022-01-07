
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* lpszClassName; int * lpszMenuName; scalar_t__ hbrBackground; int hCursor; int * hIcon; int hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; int lpfnWndProc; scalar_t__ style; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int LPSTR ;
typedef scalar_t__ HBRUSH ;
typedef int ATOM ;


 scalar_t__ COLOR_BTNFACE ;
 int DefWindowProcA ;
 int GetModuleHandleA (int *) ;
 scalar_t__ IDC_ARROW ;
 int LoadCursorA (int *,int ) ;
 int RegisterClassA (TYPE_1__*) ;

__attribute__((used)) static ATOM register_class(void)
{
    WNDCLASSA wndclassA;

    wndclassA.style = 0;
    wndclassA.lpfnWndProc = DefWindowProcA;
    wndclassA.cbClsExtra = 0;
    wndclassA.cbWndExtra = 0;
    wndclassA.hInstance = GetModuleHandleA(((void*)0));
    wndclassA.hIcon = ((void*)0);
    wndclassA.hCursor = LoadCursorA(((void*)0), (LPSTR)IDC_ARROW);
    wndclassA.hbrBackground = (HBRUSH)(COLOR_BTNFACE+1);
    wndclassA.lpszMenuName = ((void*)0);
    wndclassA.lpszClassName = "WineAtlTestClass";

    return RegisterClassA(&wndclassA);
}
