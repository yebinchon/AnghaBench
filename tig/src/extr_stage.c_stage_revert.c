
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct view {int dummy; } ;
struct line {int dummy; } ;
struct TYPE_3__ {scalar_t__ status; } ;


 int LINE_DIFF_CHUNK ;
 scalar_t__ LINE_STAT_UNSTAGED ;
 struct line* find_prev_line_by_type (struct view*,struct line*,int ) ;
 int is_initial_commit () ;
 int prompt_yesno (char*) ;
 int report (char*) ;
 int stage_apply_chunk (struct view*,struct line*,int *,int) ;
 scalar_t__ stage_line_type ;
 TYPE_1__ stage_status ;
 int status_revert (TYPE_1__*,scalar_t__,int) ;

__attribute__((used)) static bool
stage_revert(struct view *view, struct line *line)
{
 struct line *chunk = ((void*)0);

 if (!is_initial_commit() && stage_line_type == LINE_STAT_UNSTAGED)
  chunk = find_prev_line_by_type(view, line, LINE_DIFF_CHUNK);

 if (chunk) {
  if (!prompt_yesno("Are you sure you want to revert changes?"))
   return 0;

  if (!stage_apply_chunk(view, chunk, ((void*)0), 1)) {
   report("Failed to revert chunk");
   return 0;
  }
  return 1;

 } else {
  return status_revert(stage_status.status ? &stage_status : ((void*)0),
         stage_line_type, 0);
 }
}
