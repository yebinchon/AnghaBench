
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WCHAR ;
struct TYPE_3__ {int hWndLBox; int hWndEdit; } ;
typedef int * LPWSTR ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int LPARAM ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int GetProcessHeap () ;
 int GetWindowTextW (int ,int *,int) ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int LB_ERR ;
 int LB_FINDSTRING ;
 int LB_SETCARETINDEX ;
 int LB_SETCURSEL ;
 int LB_SETTOPINDEX ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int) ;
 int WM_GETTEXTLENGTH ;

__attribute__((used)) static INT CBUpdateLBox( LPHEADCOMBO lphc, BOOL bSelect )
{
   INT length, idx;
   LPWSTR pText = ((void*)0);

   idx = LB_ERR;
   length = SendMessageW( lphc->hWndEdit, WM_GETTEXTLENGTH, 0, 0 );

   if( length > 0 )
       pText = HeapAlloc( GetProcessHeap(), 0, (length + 1) * sizeof(WCHAR));

   TRACE("\t edit text length %i\n", length );

   if( pText )
   {
       GetWindowTextW( lphc->hWndEdit, pText, length + 1);
       idx = SendMessageW(lphc->hWndLBox, LB_FINDSTRING, (WPARAM)(-1), (LPARAM)pText);
       HeapFree( GetProcessHeap(), 0, pText );
   }

   SendMessageW(lphc->hWndLBox, LB_SETCURSEL, (WPARAM)(bSelect ? idx : -1), 0);


   SendMessageW(lphc->hWndLBox, LB_SETCARETINDEX, (WPARAM)(idx < 0 ? 0 : idx), 0);
   SendMessageW(lphc->hWndLBox, LB_SETTOPINDEX, (WPARAM)(idx < 0 ? 0 : idx), 0);

   return idx;
}
