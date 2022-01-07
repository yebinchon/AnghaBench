
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* WPARAM ;
typedef int UINT ;
struct TYPE_7__ {int hwndParent; scalar_t__ hWnd; } ;
struct TYPE_5__ {int idFrom; int code; scalar_t__ hwndFrom; } ;
struct TYPE_6__ {void* wParam; int lParam; TYPE_1__ nmhdr; int msg; } ;
typedef TYPE_2__ MSGFILTER ;
typedef TYPE_3__ ME_TextEditor ;
typedef int LPARAM ;
typedef int BOOL ;


 int EN_MSGFILTER ;
 int FALSE ;
 int GWLP_ID ;
 int GetWindowLongW (scalar_t__,int ) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;
 int WM_NOTIFY ;

__attribute__((used)) static BOOL
ME_FilterEvent(ME_TextEditor *editor, UINT msg, WPARAM* wParam, LPARAM* lParam)
{
    MSGFILTER msgf;

    if (!editor->hWnd || !editor->hwndParent) return FALSE;
    msgf.nmhdr.hwndFrom = editor->hWnd;
    msgf.nmhdr.idFrom = GetWindowLongW(editor->hWnd, GWLP_ID);
    msgf.nmhdr.code = EN_MSGFILTER;
    msgf.msg = msg;
    msgf.wParam = *wParam;
    msgf.lParam = *lParam;
    if (SendMessageW(editor->hwndParent, WM_NOTIFY, msgf.nmhdr.idFrom, (LPARAM)&msgf))
        return FALSE;
    *wParam = msgf.wParam;
    *lParam = msgf.lParam;
    msgf.wParam = *wParam;

    return TRUE;
}
