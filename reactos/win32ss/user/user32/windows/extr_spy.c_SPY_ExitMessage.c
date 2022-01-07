
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_5__ {int msg_name; int wnd_name; int wParam; int lParam; int msg_hwnd; int msgnum; } ;
typedef TYPE_1__ SPY_INSTANCE ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;
typedef int DWORD ;


 int FALSE ;
 int GetLastError () ;
 int SPY_DumpStructure (TYPE_1__*,int ) ;
 int SPY_GetMsgStuff (TYPE_1__*) ;
 int SPY_GetWndName (TYPE_1__*) ;
 scalar_t__ SPY_INDENT_UNIT ;


 int SetLastError (int ) ;
 int TRACE (char*,int,char*,int ,int ,int ,int ,...) ;
 int TRACE_ON (int ) ;
 int debugstr_w (int ) ;
 scalar_t__ exclude_dwp () ;
 scalar_t__ exclude_msg (int ) ;
 int get_indent_level () ;
 int message ;
 int set_indent_level (int) ;

void SPY_ExitMessage( INT iFlag, HWND hWnd, UINT msg, LRESULT lReturn,
                       WPARAM wParam, LPARAM lParam )
{
    SPY_INSTANCE sp_e;
    int indent;
    DWORD save_error = GetLastError();

    if (!TRACE_ON(message) || exclude_msg(msg) ||
        (exclude_dwp() && iFlag == 129))
        return;

    sp_e.msgnum = msg;
    sp_e.msg_hwnd = hWnd;
    sp_e.lParam = lParam;
    sp_e.wParam = wParam;
    SPY_GetWndName(&sp_e);
    SPY_GetMsgStuff(&sp_e);

    if ((indent = get_indent_level()))
    {
        indent -= SPY_INDENT_UNIT;
        set_indent_level( indent );
    }

    switch(iFlag)
    {
    case 129:
        TRACE(" %*s(%p)  DefWindowProc: [%04x] %s returned %08lx\n",
              indent, "", hWnd, msg, sp_e.msg_name, lReturn );
        break;

    case 128:
        TRACE(" %*s(%p) %-16s [%04x] %s returned %08lx\n",
                        indent, "", hWnd, debugstr_w(sp_e.wnd_name), msg,
                        sp_e.msg_name, lReturn );
        SPY_DumpStructure(&sp_e, FALSE);
        break;
    }
    SetLastError( save_error );
}
