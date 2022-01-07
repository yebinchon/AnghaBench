
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int msg_name; scalar_t__* wnd_class; scalar_t__ wParam; scalar_t__ lParam; int msg_hwnd; int msgnum; } ;
typedef TYPE_1__ SPY_INSTANCE ;
typedef int HWND ;
typedef int DWORD ;


 int GetLastError () ;
 int SPY_GetMsgStuff (TYPE_1__*) ;
 int SetLastError (int ) ;
 char const* wine_dbg_sprintf (char*,int ) ;

const char *SPY_GetMsgName( UINT msg, HWND hWnd )
{
    SPY_INSTANCE ext_sp_e;
    DWORD save_error = GetLastError();

    ext_sp_e.msgnum = msg;
    ext_sp_e.msg_hwnd = hWnd;
    ext_sp_e.lParam = 0;
    ext_sp_e.wParam = 0;
    ext_sp_e.wnd_class[0] = 0;
    SPY_GetMsgStuff(&ext_sp_e);
    SetLastError( save_error );
    return wine_dbg_sprintf("%s", ext_sp_e.msg_name);
}
