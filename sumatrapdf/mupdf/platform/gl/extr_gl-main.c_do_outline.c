
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int dummy; } ;
typedef int fz_outline ;


 int BOTH ;
 int L ;
 int NW ;
 int R ;
 int count_outline (int *,int) ;
 int do_outline_imp (struct list*,int,int *,int ) ;
 int outline_w ;
 int ui_layout (int ,int ,int ,int ,int ) ;
 int ui_splitter (int *,int,int,int ) ;
 int ui_tree_begin (struct list*,int ,int ,int ,int) ;
 int ui_tree_end (struct list*) ;

__attribute__((used)) static void do_outline(fz_outline *node)
{
 static struct list list;
 ui_layout(L, BOTH, NW, 0, 0);
 ui_tree_begin(&list, count_outline(node, 65535), outline_w, 0, 1);
 do_outline_imp(&list, 65535, node, 0);
 ui_tree_end(&list);
 ui_splitter(&outline_w, 150, 500, R);
}
