
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_9__ {TYPE_1__ droppedRect; int self; } ;
struct TYPE_8__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_2__* LPRECT ;
typedef TYPE_3__* LPHEADCOMBO ;


 int GetWindowRect (int ,TYPE_2__*) ;

__attribute__((used)) static void CBGetDroppedControlRect( LPHEADCOMBO lphc, LPRECT lpRect)
{



    GetWindowRect(lphc->self, lpRect);

    lpRect->right = lpRect->left + lphc->droppedRect.right - lphc->droppedRect.left;
    lpRect->bottom = lpRect->top + lphc->droppedRect.bottom - lphc->droppedRect.top;

}
