
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int hDC; } ;
struct TYPE_8__ {scalar_t__* widths; } ;
struct TYPE_7__ {scalar_t__ right; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ Pane ;
typedef TYPE_3__* LPDRAWITEMSTRUCT ;
typedef int LPCWSTR ;


 int DT_CALCRECT ;
 int DT_NOPREFIX ;
 int DT_SINGLELINE ;
 int DrawTextW (int ,int ,int,TYPE_1__*,int) ;

__attribute__((used)) static void calc_width(Pane* pane, LPDRAWITEMSTRUCT dis, int col, LPCWSTR str)
{
 RECT rt = {0, 0, 0, 0};

 DrawTextW(dis->hDC, str, -1, &rt, DT_CALCRECT|DT_SINGLELINE|DT_NOPREFIX);

 if (rt.right > pane->widths[col])
  pane->widths[col] = rt.right;
}
