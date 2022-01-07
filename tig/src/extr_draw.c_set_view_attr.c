
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int curtype; int win; TYPE_1__* curline; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_2__ {int selected; } ;


 int get_view_attr (struct view*,int) ;
 int get_view_color (struct view*,int) ;
 int touchwin (int ) ;
 int wattrset (int ,int ) ;
 int wchgat (int ,int,int ,int ,int *) ;

__attribute__((used)) static inline void
set_view_attr(struct view *view, enum line_type type)
{
 if (!view->curline->selected && view->curtype != type) {
  (void) wattrset(view->win, get_view_attr(view, type));
  wchgat(view->win, -1, 0, get_view_color(view, type), ((void*)0));



  view->curtype = type;
 }
}
