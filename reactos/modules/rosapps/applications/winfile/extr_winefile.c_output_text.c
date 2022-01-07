
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ cx; } ;
struct TYPE_15__ {TYPE_1__ spaceSize; } ;
struct TYPE_11__ {int left; int bottom; int top; } ;
struct TYPE_14__ {int hDC; TYPE_2__ rcItem; } ;
struct TYPE_13__ {scalar_t__* positions; } ;
struct TYPE_12__ {int bottom; scalar_t__ right; int top; scalar_t__ left; } ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__ Pane ;
typedef TYPE_5__* LPDRAWITEMSTRUCT ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int DT_NOPREFIX ;
 int DT_SINGLELINE ;
 int DrawTextW (int ,int ,int,TYPE_3__*,int) ;
 TYPE_8__ Globals ;

__attribute__((used)) static void output_text(Pane* pane, LPDRAWITEMSTRUCT dis, int col, LPCWSTR str, DWORD flags)
{
 int x = dis->rcItem.left;
 RECT rt;

 rt.left = x+pane->positions[col]+Globals.spaceSize.cx;
 rt.top = dis->rcItem.top;
 rt.right = x+pane->positions[col+1]-Globals.spaceSize.cx;
 rt.bottom = dis->rcItem.bottom;

 DrawTextW(dis->hDC, str, -1, &rt, DT_SINGLELINE|DT_NOPREFIX|flags);
}
