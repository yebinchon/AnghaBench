
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int root; int hwnd; } ;
struct TYPE_6__ {TYPE_2__ right; int filter_flags; int filter_pattern; } ;
typedef TYPE_1__ ChildWnd ;


 int FALSE ;
 int LB_RESETCONTENT ;
 int SendMessageW (int ,int ,int ,int ) ;
 int calc_widths (TYPE_2__*,int ) ;
 int insert_entries (TYPE_2__*,int ,int ,int ,int) ;
 int set_header (TYPE_2__*) ;

__attribute__((used)) static void refresh_right_pane(ChildWnd* child)
{
 SendMessageW(child->right.hwnd, LB_RESETCONTENT, 0, 0);
 insert_entries(&child->right, child->right.root, child->filter_pattern, child->filter_flags, -1);
 calc_widths(&child->right, FALSE);

 set_header(&child->right);
}
