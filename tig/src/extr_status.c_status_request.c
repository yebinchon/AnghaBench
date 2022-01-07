
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct view {int * parent; TYPE_2__* env; } ;
struct TYPE_3__ {int name; } ;
struct status {unsigned char status; TYPE_1__ new; } ;
struct line {int type; struct status* data; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_4__ {int * ref; } ;


 int LINE_STAT_UNTRACKED ;


 int REQ_NONE ;





 int REQ_VIEW_CLOSE ;
 int load_repo_head () ;
 int main_status_exists (int *,int ) ;
 int main_view ;
 int open_editor (int ,int ) ;
 int open_mergetool (int ) ;
 int refresh_view (struct view*) ;
 int report (char*) ;
 scalar_t__ show_untracked_only ;
 int status_enter (struct view*,struct line*) ;
 int status_has_none (struct view*,struct line*) ;
 int status_revert (struct status*,int ,int ) ;
 int status_update (struct view*) ;

__attribute__((used)) static enum request
status_request(struct view *view, enum request request, struct line *line)
{
 struct status *status = line->data;

 switch (request) {
 case 129:
  if (!status_update(view))
   return REQ_NONE;
  break;

 case 130:
  if (!status_revert(status, line->type, status_has_none(view, line)))
   return REQ_NONE;
  break;

 case 131:
  if (!status || status->status != 'U') {
   report("Merging only possible for files with unmerged status ('U').");
   return REQ_NONE;
  }
  open_mergetool(status->new.name);
  break;

 case 134:
  if (!status)
   return request;
  if (status->status == 'D') {
   report("File has been deleted.");
   return REQ_NONE;
  }

  open_editor(status->new.name, 0);
  break;

 case 128:
  if (line->type == LINE_STAT_UNTRACKED || !status) {
   report("Nothing to blame here");
   return REQ_NONE;
  }
  if (status)
   view->env->ref[0] = 0;
  return request;

 case 133:



  return status_enter(view, line);

 case 132:

  load_repo_head();
  break;

 default:
  return request;
 }

 if (show_untracked_only && view->parent == &main_view && !main_status_exists(view->parent, LINE_STAT_UNTRACKED))
  return REQ_VIEW_CLOSE;

 refresh_view(view);

 return REQ_NONE;
}
