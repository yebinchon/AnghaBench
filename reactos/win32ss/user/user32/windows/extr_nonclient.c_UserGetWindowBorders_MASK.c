#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int cx; int cy; } ;
typedef  TYPE_1__ SIZE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXBORDER ; 
 int /*<<< orphan*/  SM_CXDLGFRAME ; 
 int /*<<< orphan*/  SM_CXFRAME ; 
 int /*<<< orphan*/  SM_CYBORDER ; 
 int /*<<< orphan*/  SM_CYDLGFRAME ; 
 int /*<<< orphan*/  SM_CYFRAME ; 
 scalar_t__ FUNC1 (int,int) ; 
 int WS_CAPTION ; 
 int WS_EX_CLIENTEDGE ; 
 int WS_EX_DLGMODALFRAME ; 
 int WS_EX_STATICEDGE ; 
 int WS_MINIMIZE ; 
 int WS_THICKFRAME ; 

VOID
FUNC2(DWORD Style, DWORD ExStyle, SIZE *Size, BOOL WithClient)
{
   DWORD Border = 0;

   if (FUNC1(Style, ExStyle))
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
      Size->cx += FUNC0(SM_CXFRAME) - FUNC0(SM_CXDLGFRAME);
      Size->cy += FUNC0(SM_CYFRAME) - FUNC0(SM_CYDLGFRAME);
   }
   Size->cx *= FUNC0(SM_CXBORDER);
   Size->cy *= FUNC0(SM_CYBORDER);
}