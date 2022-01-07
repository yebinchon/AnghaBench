
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct view {int dummy; } ;
struct line {int dummy; } ;
struct TYPE_3__ {int status; } ;


 int LINE_DIFF_CHUNK ;
 scalar_t__ LINE_STAT_UNTRACKED ;
 struct line* find_prev_line_by_type (struct view*,struct line*,int ) ;
 int is_initial_commit () ;
 int report (char*) ;
 int stage_apply_chunk (struct view*,struct line*,struct line*,int) ;
 scalar_t__ stage_line_type ;
 TYPE_1__ stage_status ;
 int stage_update_files (struct view*,scalar_t__) ;
 int status_update_file (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static bool
stage_update(struct view *view, struct line *line, bool single)
{
 struct line *chunk = ((void*)0);

 if (!is_initial_commit() && stage_line_type != LINE_STAT_UNTRACKED)
  chunk = find_prev_line_by_type(view, line, LINE_DIFF_CHUNK);

 if (chunk) {
  if (!stage_apply_chunk(view, chunk, single ? line : ((void*)0), 0)) {
   report("Failed to apply chunk");
   return 0;
  }

 } else if (!stage_status.status) {
  if (!stage_update_files(view, stage_line_type)) {
   report("Failed to update files");
   return 0;
  }

 } else if (!status_update_file(&stage_status, stage_line_type)) {
  report("Failed to update file");
  return 0;
 }

 return 1;
}
