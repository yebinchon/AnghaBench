
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {unsigned long lines; struct line* line; } ;
struct TYPE_2__ {int name; } ;
struct status {TYPE_1__ new; int status; } ;
struct line {int type; struct status* data; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int refresh_view (struct view*) ;
 int select_view_line (struct view*,unsigned long) ;
 int status_restore (struct view*) ;
 int strcmp (int ,int ) ;

bool
status_exists(struct view *view, struct status *status, enum line_type type)
{
 unsigned long lineno;

 refresh_view(view);

 for (lineno = 0; lineno < view->lines; lineno++) {
  struct line *line = &view->line[lineno];
  struct status *pos = line->data;

  if (line->type != type)
   continue;
  if ((!pos && (!status || !status->status) && line[1].data) ||
      (pos && status && !strcmp(status->new.name, pos->new.name))) {
   select_view_line(view, lineno);
   status_restore(view);
   return 1;
  }
 }

 return 0;
}
