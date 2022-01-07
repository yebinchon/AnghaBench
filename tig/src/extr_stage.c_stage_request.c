
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct view {scalar_t__ parent; TYPE_2__* env; int line; } ;
struct line {int type; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_5__ {int * name; } ;
struct TYPE_7__ {char status; TYPE_1__ new; } ;
struct TYPE_6__ {int goto_lineno; int * ref; int file; } ;


 int LINE_DIFF_ADD ;
 int LINE_DIFF_CHUNK ;
 int LINE_DIFF_DEL ;
 scalar_t__ LINE_STAT_UNTRACKED ;


 int REQ_NONE ;






 int REQ_VIEW_CLOSE ;
 int diff_common_edit (struct view*,int,struct line*) ;
 int diff_common_enter (struct view*,int,struct line*) ;
 int diff_get_lineno (struct view*,struct line*) ;
 char* diff_get_pathname (struct view*,struct line*) ;
 struct line* find_prev_line_by_type (struct view*,struct line*,int ) ;
 int load_refs (int) ;
 int open_editor (int *,int ) ;
 int refresh_view (struct view*) ;
 int report (char*) ;
 int stage_chunk_is_wrapped (struct view*,struct line*) ;
 int stage_exists (struct view*,TYPE_3__*,scalar_t__) ;
 scalar_t__ stage_line_type ;
 int stage_revert (struct view*,struct line*) ;
 int stage_split_chunk (struct view*,struct line*) ;
 TYPE_3__ stage_status ;
 int stage_update (struct view*,struct line*,int) ;
 int string_copy (int ,int *) ;
 int string_ncopy (int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static enum request
stage_request(struct view *view, enum request request, struct line *line)
{
 switch (request) {
 case 129:
  if (!stage_update(view, line, 0))
   return REQ_NONE;
  break;

 case 130:
  if (!stage_revert(view, line))
   return REQ_NONE;
  break;

 case 131:
  if (stage_line_type == LINE_STAT_UNTRACKED ||
      stage_status.status == 'A') {
   report("Staging single lines is not supported for new files");
   return REQ_NONE;
  }
  if (line->type != LINE_DIFF_DEL && line->type != LINE_DIFF_ADD) {
   report("Please select a change to stage");
   return REQ_NONE;
  }
  if (stage_chunk_is_wrapped(view, line)) {
   report("Staging is not supported for wrapped lines");
   return REQ_NONE;
  }
  if (!stage_update(view, line, 1))
   return REQ_NONE;
  break;


 case 132:
  if (stage_line_type == LINE_STAT_UNTRACKED ||
      !(line = find_prev_line_by_type(view, line, LINE_DIFF_CHUNK))) {
   report("No chunks to split in sight");
   return REQ_NONE;
  }
  stage_split_chunk(view, line);
  return REQ_NONE;

 case 135:
  if (!stage_status.new.name[0])
   return diff_common_edit(view, request, line);

  if (stage_status.status == 'D') {
   report("File has been deleted.");
   return REQ_NONE;
  }

  if (stage_line_type == LINE_STAT_UNTRACKED) {
   open_editor(stage_status.new.name, (line - view->line) + 1);
  } else {
   open_editor(stage_status.new.name, diff_get_lineno(view, line));
  }
  break;

 case 133:

  load_refs(1);
  break;

 case 128:
  if (stage_line_type == LINE_STAT_UNTRACKED) {
   report("Nothing to blame here");
   return REQ_NONE;
  }

  if (stage_status.new.name[0]) {
   string_copy(view->env->file, stage_status.new.name);
  } else {
   const char *file = diff_get_pathname(view, line);

   if (file)
    string_ncopy(view->env->file, file, strlen(file));
  }

  view->env->ref[0] = 0;
  view->env->goto_lineno = diff_get_lineno(view, line);
  if (view->env->goto_lineno > 0)
   view->env->goto_lineno--;
  return request;

 case 134:
  return diff_common_enter(view, request, line);

 default:
  return request;
 }



 if (view->parent && !stage_exists(view, &stage_status, stage_line_type)) {
  stage_line_type = 0;
  return REQ_VIEW_CLOSE;
 }

 refresh_view(view);

 return REQ_NONE;
}
