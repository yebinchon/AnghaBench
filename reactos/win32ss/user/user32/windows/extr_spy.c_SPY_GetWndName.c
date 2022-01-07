
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {scalar_t__* wnd_class; scalar_t__* wnd_name; int msg_hwnd; } ;
typedef TYPE_1__ SPY_INSTANCE ;
typedef scalar_t__* LPWSTR ;
typedef int INT ;


 int InternalGetWindowText (int ,scalar_t__*,int) ;
 int SPY_GetClassName (TYPE_1__*) ;

__attribute__((used)) static void SPY_GetWndName( SPY_INSTANCE *sp_e )
{
    INT len;

    SPY_GetClassName( sp_e );

    len = InternalGetWindowText(sp_e->msg_hwnd, sp_e->wnd_name, sizeof(sp_e->wnd_name)/sizeof(WCHAR));
    if(!len)
    {
        LPWSTR dst = sp_e->wnd_name;
        LPWSTR src = sp_e->wnd_class;
        int n = sizeof(sp_e->wnd_name)/sizeof(WCHAR) - 3;
        *dst++ = '{';
        while ((n-- > 0) && *src) *dst++ = *src++;
        *dst++ = '}';
        *dst = 0;
    }
}
