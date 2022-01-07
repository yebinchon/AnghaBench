
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wState; } ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int BOOL ;


 int CBDropDown (TYPE_1__*) ;
 int CBF_DROPPED ;
 int CBRollUp (TYPE_1__*,int ,int ) ;
 int FALSE ;
 int TRUE ;

BOOL COMBO_FlipListbox( LPHEADCOMBO lphc, BOOL ok, BOOL bRedrawButton )
{
   if( lphc->wState & CBF_DROPPED )
   {
       CBRollUp( lphc, ok, bRedrawButton );
       return FALSE;
   }

   CBDropDown( lphc );
   return TRUE;
}
