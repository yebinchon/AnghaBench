
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lineno; int col; int offset; } ;
struct view {scalar_t__ lines; TYPE_1__ prev_pos; TYPE_1__ pos; int win; scalar_t__ pipe; } ;


 scalar_t__ check_position (TYPE_1__*) ;
 int clear_position (TYPE_1__*) ;
 int goto_view_line (struct view*,int ,scalar_t__) ;
 scalar_t__ view_is_displayed (struct view*) ;
 int werase (int ) ;

__attribute__((used)) static bool
restore_view_position(struct view *view)
{

 if (!check_position(&view->prev_pos) ||
     (view->pipe && view->lines <= view->prev_pos.lineno))
  return goto_view_line(view, view->pos.offset, view->pos.lineno);



 if (check_position(&view->pos)) {
  clear_position(&view->prev_pos);
  return 0;
 }

 if (goto_view_line(view, view->prev_pos.offset, view->prev_pos.lineno) &&
     view_is_displayed(view))
  werase(view->win);

 view->pos.col = view->prev_pos.col;
 clear_position(&view->prev_pos);

 return 1;
}
