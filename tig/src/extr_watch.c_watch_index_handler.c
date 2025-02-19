
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ staged; scalar_t__ unstaged; scalar_t__ untracked; } ;
struct watch_handler {scalar_t__ last_modified; TYPE_1__ diff; } ;
struct index_diff {scalar_t__ staged; scalar_t__ unstaged; scalar_t__ untracked; } ;
typedef enum watch_trigger { ____Placeholder_watch_trigger } watch_trigger ;
typedef enum watch_event { ____Placeholder_watch_event } watch_event ;
struct TYPE_4__ {int git_dir; } ;


 int WATCH_EVENT_AFTER_COMMAND ;
 int WATCH_EVENT_SWITCH_VIEW ;
 int WATCH_INDEX_STAGED ;
 int WATCH_INDEX_UNSTAGED ;
 int WATCH_INDEX_UNTRACKED ;
 int WATCH_NONE ;
 scalar_t__ check_file_mtime (scalar_t__*,char*,int ) ;
 int index_diff (struct index_diff*,int ,int ) ;
 int opt_show_untracked ;
 int opt_status_show_untracked_files ;
 TYPE_2__ repo ;
 scalar_t__ time (int *) ;

__attribute__((used)) static enum watch_trigger
watch_index_handler(struct watch_handler *handler, enum watch_event event, enum watch_trigger check)
{
 enum watch_trigger changed = WATCH_NONE;
 struct index_diff diff;

 if (event == WATCH_EVENT_AFTER_COMMAND)
  return check_file_mtime(&handler->last_modified, "%s/index", repo.git_dir)
   ? check : WATCH_NONE;

 if (event == WATCH_EVENT_SWITCH_VIEW)
  return WATCH_NONE;

 if (!index_diff(&diff, opt_show_untracked, opt_status_show_untracked_files))
  return check_file_mtime(&handler->last_modified, "%s/index", repo.git_dir)
   ? check : WATCH_NONE;

 if (check & WATCH_INDEX_STAGED && diff.staged != handler->diff.staged) {
  if (handler->last_modified)
   changed |= WATCH_INDEX_STAGED;
  handler->diff.staged = diff.staged;
 }

 if (check & WATCH_INDEX_UNSTAGED && diff.unstaged != handler->diff.unstaged) {
  if (handler->last_modified)
   changed |= WATCH_INDEX_UNSTAGED;
  handler->diff.unstaged = diff.unstaged;
 }

 if (check & WATCH_INDEX_UNTRACKED && diff.untracked != handler->diff.untracked) {
  if (handler->last_modified)
   changed |= WATCH_INDEX_UNTRACKED;
  handler->diff.untracked = diff.untracked;
 }

 handler->last_modified = time(((void*)0));

 return changed;
}
