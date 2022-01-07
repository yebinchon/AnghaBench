
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int hwndParent; } ;
struct TYPE_6__ {int exStyleFlags; int styleFlags; int hwndParent; int hWnd; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int LONG_PTR ;
typedef int ITextHost ;
typedef int HWND ;
typedef TYPE_2__ CREATESTRUCTW ;
typedef int BOOL ;


 int ES_WANTRETURN ;
 int FALSE ;
 int GWL_EXSTYLE ;
 int GWL_STYLE ;
 int GetWindowLongW (int ,int ) ;
 int ITextHost_Release (int *) ;
 int * ME_CreateTextHost (int ,TYPE_2__*,int ) ;
 TYPE_1__* ME_MakeEditor (int *,int ) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL create_windowed_editor(HWND hwnd, CREATESTRUCTW *create, BOOL emulate_10)
{
    ITextHost *host = ME_CreateTextHost( hwnd, create, emulate_10 );
    ME_TextEditor *editor;

    if (!host) return FALSE;

    editor = ME_MakeEditor( host, emulate_10 );
    if (!editor)
    {
        ITextHost_Release( host );
        return FALSE;
    }

    editor->exStyleFlags = GetWindowLongW( hwnd, GWL_EXSTYLE );
    editor->styleFlags |= GetWindowLongW( hwnd, GWL_STYLE ) & ES_WANTRETURN;
    editor->hWnd = hwnd;
    editor->hwndParent = create->hwndParent;

    SetWindowLongPtrW( hwnd, 0, (LONG_PTR)editor );

    return TRUE;
}
