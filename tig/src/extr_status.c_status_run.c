
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct view {int lines; int watch; TYPE_3__* line; } ;
struct TYPE_6__ {int * name; } ;
struct TYPE_5__ {int * name; int * rev; } ;
struct status {char status; TYPE_2__ new; TYPE_1__ old; int member_0; } ;
struct line {int dummy; } ;
struct io {int dummy; } ;
struct buffer {int size; int data; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_8__ {int exec_dir; } ;
struct TYPE_7__ {int data; } ;


 int IO_RD ;
 int LINE_STAT_NONE ;
 int LINE_STAT_STAGED ;
 int LINE_STAT_UNSTAGED ;
 int LINE_STAT_UNTRACKED ;
 int * NULL_ID ;
 int WATCH_INDEX_STAGED_NO ;
 int WATCH_INDEX_STAGED_YES ;
 int WATCH_INDEX_UNSTAGED_NO ;
 int WATCH_INDEX_UNSTAGED_YES ;
 int WATCH_INDEX_UNTRACKED_NO ;
 int WATCH_INDEX_UNTRACKED_YES ;
 struct line* add_line_alloc (struct view*,struct status**,int,int ,int) ;
 int add_line_nodata (struct view*,int) ;
 int io_done (struct io*) ;
 scalar_t__ io_error (struct io*) ;
 scalar_t__ io_get (struct io*,struct buffer*,int ,int) ;
 int io_run (struct io*,int ,int ,int *,char const**) ;
 TYPE_4__ repo ;
 int status_get_diff (struct status*,int ,int ) ;
 int strcmp (int *,int *) ;
 int string_copy (int *,int *) ;
 int string_ncopy (int *,int ,int ) ;
 int view_column_info_update (struct view*,struct line*) ;
 int watch_apply (int *,int ) ;

__attribute__((used)) static bool
status_run(struct view *view, const char *argv[], char status, enum line_type type)
{
 struct status *unmerged = ((void*)0);
 struct buffer buf;
 struct io io;

 if (!io_run(&io, IO_RD, repo.exec_dir, ((void*)0), argv))
  return 0;

 add_line_nodata(view, type);

 while (io_get(&io, &buf, 0, 1)) {
  struct line *line;
  struct status parsed = {0};
  struct status *file = &parsed;


  if (status) {
   file->status = status;
   if (status == 'A')
    string_copy(file->old.rev, NULL_ID);

  } else {
   if (!status_get_diff(&parsed, buf.data, buf.size))
    goto error_out;

   if (!io_get(&io, &buf, 0, 1))
    break;
  }


  if (!*file->old.name &&
      (file->status == 'R' || file->status == 'C')) {
   string_ncopy(file->old.name, buf.data, buf.size);

   if (!io_get(&io, &buf, 0, 1))
    break;
  }




  string_ncopy(file->new.name, buf.data, buf.size);
  if (!*file->old.name)
   string_copy(file->old.name, file->new.name);



  if (unmerged && !strcmp(unmerged->new.name, file->new.name)) {
   unmerged->status = 'U';
   unmerged = ((void*)0);
   continue;
  }

  line = add_line_alloc(view, &file, type, 0, 0);
  if (!line)
   goto error_out;
  *file = parsed;
  view_column_info_update(view, line);
  if (file->status == 'U')
   unmerged = file;
 }

 if (io_error(&io)) {
error_out:
  io_done(&io);
  return 0;
 }

 if (!view->line[view->lines - 1].data) {
  add_line_nodata(view, LINE_STAT_NONE);
  if (type == LINE_STAT_STAGED)
   watch_apply(&view->watch, WATCH_INDEX_STAGED_NO);
  else if (type == LINE_STAT_UNSTAGED)
   watch_apply(&view->watch, WATCH_INDEX_UNSTAGED_NO);
  else if (type == LINE_STAT_UNTRACKED)
   watch_apply(&view->watch, WATCH_INDEX_UNTRACKED_NO);
 } else {
  if (type == LINE_STAT_STAGED)
   watch_apply(&view->watch, WATCH_INDEX_STAGED_YES);
  else if (type == LINE_STAT_UNSTAGED)
   watch_apply(&view->watch, WATCH_INDEX_UNSTAGED_YES);
  else if (type == LINE_STAT_UNTRACKED)
   watch_apply(&view->watch, WATCH_INDEX_UNTRACKED_YES);
 }

 io_done(&io);
 return 1;
}
