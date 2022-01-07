
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int self; int buttonRect; } ;
typedef TYPE_1__* LPHEADCOMBO ;


 int InvalidateRect (int ,int *,int ) ;
 int TRUE ;
 int UpdateWindow (int ) ;

__attribute__((used)) static void CBRepaintButton( LPHEADCOMBO lphc )
   {
  InvalidateRect(lphc->self, &lphc->buttonRect, TRUE);
  UpdateWindow(lphc->self);
}
