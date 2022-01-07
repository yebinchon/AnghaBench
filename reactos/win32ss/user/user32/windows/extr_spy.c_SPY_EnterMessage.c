
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_5__ {int msg_name; int wnd_name; int wParam; int lParam; int msg_hwnd; int msgnum; } ;
typedef TYPE_1__ SPY_INSTANCE ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;
typedef int DWORD ;


 int GetCurrentThreadId () ;
 int GetLastError () ;
 int GetWindowThreadProcessId (int ,int *) ;


 int SPY_DumpStructure (TYPE_1__*,int ) ;
 int SPY_GetMsgStuff (TYPE_1__*) ;
 int SPY_GetWndName (TYPE_1__*) ;
 scalar_t__ SPY_INDENT_UNIT ;

 int SetLastError (int ) ;
 int TRACE (char*,int,char*,int ,int ,int ,int ,char*,...) ;
 int TRUE ;
 int debugstr_w (int ) ;
 int exclude_dwp () ;
 scalar_t__ exclude_msg (int ) ;
 int get_indent_level () ;
 int set_indent_level (scalar_t__) ;
 int sprintf (char*,char*,int ) ;
 int spy_init () ;
 int strcpy (char*,char*) ;

void SPY_EnterMessage( INT iFlag, HWND hWnd, UINT msg,
                       WPARAM wParam, LPARAM lParam )
{
    SPY_INSTANCE sp_e;
    int indent;
    DWORD save_error = GetLastError();

    if (!spy_init() || exclude_msg(msg)) return;

    sp_e.msgnum = msg;
    sp_e.msg_hwnd = hWnd;
    sp_e.lParam = lParam;
    sp_e.wParam = wParam;
    SPY_GetWndName(&sp_e);
    SPY_GetMsgStuff(&sp_e);
    indent = get_indent_level();


    switch(iFlag)
    {
    case 129:
        TRACE("%*s(%p) %-16s [%04x] %s dispatched  wp=%08lx lp=%08lx\n",
                        indent, "", hWnd, debugstr_w(sp_e.wnd_name), msg,
                        sp_e.msg_name, wParam, lParam);
        break;

    case 128:
        {
            char taskName[20];
            DWORD tid = GetWindowThreadProcessId( hWnd, ((void*)0) );

            if (tid == GetCurrentThreadId()) strcpy( taskName, "self" );
            else sprintf( taskName, "tid %04ld", GetCurrentThreadId() );

            TRACE("%*s(%p) %-16s [%04x] %s sent from %s wp=%08lx lp=%08lx\n",
                  indent, "", hWnd, debugstr_w(sp_e.wnd_name), msg,
                  sp_e.msg_name, taskName, wParam, lParam );
            SPY_DumpStructure(&sp_e, TRUE);
        }
        break;

    case 130:
        if (exclude_dwp()) return;
        TRACE("%*s(%p)  DefWindowProc:[%04x] %s  wp=%08lx lp=%08lx\n",
              indent, "", hWnd, msg, sp_e.msg_name, wParam, lParam );
        break;
    }
    set_indent_level( indent + SPY_INDENT_UNIT );
    SetLastError( save_error );
}
