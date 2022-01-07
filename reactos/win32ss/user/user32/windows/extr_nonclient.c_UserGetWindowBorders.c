
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int cx; int cy; } ;
typedef TYPE_1__ SIZE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int GetSystemMetrics (int ) ;
 int SM_CXBORDER ;
 int SM_CXDLGFRAME ;
 int SM_CXFRAME ;
 int SM_CYBORDER ;
 int SM_CYDLGFRAME ;
 int SM_CYFRAME ;
 scalar_t__ UserHasWindowEdge (int,int) ;
 int WS_CAPTION ;
 int WS_EX_CLIENTEDGE ;
 int WS_EX_DLGMODALFRAME ;
 int WS_EX_STATICEDGE ;
 int WS_MINIMIZE ;
 int WS_THICKFRAME ;

VOID
UserGetWindowBorders(DWORD Style, DWORD ExStyle, SIZE *Size, BOOL WithClient)
{
   DWORD Border = 0;

   if (UserHasWindowEdge(Style, ExStyle))
      Border += 2;
   else if (ExStyle & WS_EX_STATICEDGE)
      Border += 1;
   if ((ExStyle & WS_EX_CLIENTEDGE) && WithClient)
      Border += 2;
   if (Style & WS_CAPTION || ExStyle & WS_EX_DLGMODALFRAME)
      Border ++;
   Size->cx = Size->cy = Border;
   if ((Style & WS_THICKFRAME) && !(Style & WS_MINIMIZE))
   {
      Size->cx += GetSystemMetrics(SM_CXFRAME) - GetSystemMetrics(SM_CXDLGFRAME);
      Size->cy += GetSystemMetrics(SM_CYFRAME) - GetSystemMetrics(SM_CYDLGFRAME);
   }
   Size->cx *= GetSystemMetrics(SM_CXBORDER);
   Size->cy *= GetSystemMetrics(SM_CYBORDER);
}
