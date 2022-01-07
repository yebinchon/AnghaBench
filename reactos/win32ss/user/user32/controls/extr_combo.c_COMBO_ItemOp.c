
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {int CtlID; void* hwndItem; void* CtlType; } ;
struct TYPE_10__ {int CtlID; void* hwndItem; void* CtlType; } ;
struct TYPE_9__ {int CtlID; void* hwndItem; void* CtlType; } ;
struct TYPE_8__ {int owner; void* self; } ;
struct TYPE_7__ {int CtlID; void* CtlType; } ;
typedef TYPE_1__ MEASUREITEMSTRUCT ;
typedef int LRESULT ;
typedef TYPE_2__* LPHEADCOMBO ;
typedef scalar_t__ LPARAM ;
typedef void* HWND ;
typedef TYPE_3__ DRAWITEMSTRUCT ;
typedef TYPE_4__ DELETEITEMSTRUCT ;
typedef TYPE_5__ COMPAREITEMSTRUCT ;


 int GWLP_ID ;
 int GetWindowLongPtrW (void*,int ) ;
 void* ODT_COMBOBOX ;
 int SendMessageW (int ,int,int,scalar_t__) ;
 int TRACE (char*,void*,int) ;





__attribute__((used)) static LRESULT COMBO_ItemOp( LPHEADCOMBO lphc, UINT msg, LPARAM lParam )
{
   HWND hWnd = lphc->self;
   UINT id = (UINT)GetWindowLongPtrW( hWnd, GWLP_ID );

   TRACE("[%p]: ownerdraw op %04x\n", lphc->self, msg );

   switch( msg )
   {
   case 130:
       {
           DELETEITEMSTRUCT *lpIS = (DELETEITEMSTRUCT *)lParam;
           lpIS->CtlType = ODT_COMBOBOX;
           lpIS->CtlID = id;
           lpIS->hwndItem = hWnd;
           break;
       }
   case 129:
       {
           DRAWITEMSTRUCT *lpIS = (DRAWITEMSTRUCT *)lParam;
           lpIS->CtlType = ODT_COMBOBOX;
           lpIS->CtlID = id;
           lpIS->hwndItem = hWnd;
           break;
       }
   case 131:
       {
           COMPAREITEMSTRUCT *lpIS = (COMPAREITEMSTRUCT *)lParam;
           lpIS->CtlType = ODT_COMBOBOX;
           lpIS->CtlID = id;
           lpIS->hwndItem = hWnd;
           break;
       }
   case 128:
       {
           MEASUREITEMSTRUCT *lpIS = (MEASUREITEMSTRUCT *)lParam;
           lpIS->CtlType = ODT_COMBOBOX;
           lpIS->CtlID = id;
           break;
       }
   }
   return SendMessageW(lphc->owner, msg, id, lParam);
}
