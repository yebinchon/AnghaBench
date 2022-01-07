
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int self; scalar_t__ hWndLBox; } ;
typedef int LRESULT ;
typedef TYPE_1__* LPHEADCOMBO ;


 scalar_t__ CBS_SIMPLE ;
 scalar_t__ CB_GETTYPE (TYPE_1__*) ;
 int DestroyWindow (scalar_t__) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRACE (char*,int ) ;

__attribute__((used)) static LRESULT COMBO_NCDestroy( LPHEADCOMBO lphc )
{

   if( lphc )
   {
       TRACE("[%p]: freeing storage\n", lphc->self);

       if( (CB_GETTYPE(lphc) != CBS_SIMPLE) && lphc->hWndLBox )
       DestroyWindow( lphc->hWndLBox );

       SetWindowLongPtrW( lphc->self, 0, 0 );
       HeapFree( GetProcessHeap(), 0, lphc );
   }
   return 0;
}
