
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long offset; unsigned long lineno; } ;
struct view {unsigned long lines; unsigned long height; TYPE_1__ pos; } ;



bool
goto_view_line(struct view *view, unsigned long offset, unsigned long lineno)
{
 if (lineno >= view->lines)
  lineno = view->lines > 0 ? view->lines - 1 : 0;

 if (offset > lineno || offset + view->height <= lineno) {
  unsigned long half = view->height / 2;

  if (lineno > half)
   offset = lineno - half;
  else
   offset = 0;
 }

 if (offset != view->pos.offset || lineno != view->pos.lineno) {
  view->pos.offset = offset;
  view->pos.lineno = lineno;
  return 1;
 }

 return 0;
}
