
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_3__ {int wnd_class; int msg_hwnd; } ;
typedef TYPE_1__ SPY_INSTANCE ;


 int GCW_ATOM ;
 scalar_t__ GetClassLongPtrW (int ,int ) ;
 int GetClassNameW (int ,int ,int) ;
 scalar_t__ GetPropW (int ,int ) ;
 int PropSheetInfoStr ;
 scalar_t__ WC_DIALOG ;
 int WC_PROPSHEETW ;
 int strcpyW (int ,int ) ;

__attribute__((used)) static void SPY_GetClassName( SPY_INSTANCE *sp_e )
{

    if ((GetClassLongPtrW(sp_e->msg_hwnd, GCW_ATOM) == (ULONG_PTR)WC_DIALOG) &&
        (GetPropW(sp_e->msg_hwnd, PropSheetInfoStr))) {
        strcpyW(sp_e->wnd_class, WC_PROPSHEETW);
    }
    else {
        GetClassNameW(sp_e->msg_hwnd, sp_e->wnd_class, sizeof(sp_e->wnd_class)/sizeof(WCHAR));
    }
}
