
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwStyle; int wState; int self; } ;
typedef int LRESULT ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int LONG_PTR ;
typedef int LONG ;
typedef int HWND ;
typedef int HEADCOMBO ;


 int CBF_NOTIFY ;
 int CBS_HASSTRINGS ;
 int CBS_OWNERDRAWFIXED ;
 int CBS_OWNERDRAWVARIABLE ;
 scalar_t__ COMBO_Init () ;
 int COMBO_update_uistate (TYPE_1__*) ;
 int FALSE ;
 int GWL_EXSTYLE ;
 int GWL_STYLE ;
 int GetProcessHeap () ;
 int GetWindowLongPtrW (int ,int ) ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int SetWindowLongPtrW (int ,int ,int) ;
 int TRACE (char*,TYPE_1__*,int) ;
 int TRUE ;
 int WS_BORDER ;
 int WS_EX_CLIENTEDGE ;
 int WS_EX_NOPARENTNOTIFY ;
 int WS_HSCROLL ;
 int WS_VSCROLL ;

__attribute__((used)) static LRESULT COMBO_NCCreate(HWND hwnd, LONG style)
{
    LPHEADCOMBO lphc;

    if (COMBO_Init() && (lphc = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(HEADCOMBO))) )
    {
        lphc->self = hwnd;
        SetWindowLongPtrW( hwnd, 0, (LONG_PTR)lphc );







 lphc->dwStyle = style & ~(WS_BORDER | WS_HSCROLL | WS_VSCROLL);
        SetWindowLongPtrW( hwnd, GWL_STYLE, style & ~(WS_BORDER | WS_HSCROLL | WS_VSCROLL) );





        SetWindowLongPtrW( hwnd, GWL_EXSTYLE,
                        GetWindowLongPtrW( hwnd, GWL_EXSTYLE ) & ~WS_EX_CLIENTEDGE );

 if( !(style & (CBS_OWNERDRAWFIXED | CBS_OWNERDRAWVARIABLE)) )
              lphc->dwStyle |= CBS_HASSTRINGS;
 if( !(GetWindowLongPtrW( hwnd, GWL_EXSTYLE ) & WS_EX_NOPARENTNOTIFY) )
       lphc->wState |= CBF_NOTIFY;

        TRACE("[%p], style = %08x\n", lphc, lphc->dwStyle );
        return TRUE;
    }
    return FALSE;
}
