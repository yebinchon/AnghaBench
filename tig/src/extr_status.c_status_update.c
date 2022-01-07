
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t lineno; } ;
struct view {int lines; TYPE_1__ pos; struct line* line; } ;
struct line {int type; int data; } ;


 int assert (int ) ;
 int report (char*) ;
 scalar_t__ status_has_none (struct view*,struct line*) ;
 int status_update_file (int ,int ) ;
 int status_update_files (struct view*,struct line*) ;

__attribute__((used)) static bool
status_update(struct view *view)
{
 struct line *line = &view->line[view->pos.lineno];

 assert(view->lines);

 if (!line->data) {
  if (status_has_none(view, line)) {
   report("Nothing to update");
   return 0;
  }

  if (!status_update_files(view, line + 1)) {
   report("Failed to update file status");
   return 0;
  }

 } else if (!status_update_file(line->data, line->type)) {
  report("Failed to update file status");
  return 0;
 }

 return 1;
}
