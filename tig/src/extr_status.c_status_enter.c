
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct status {TYPE_1__ new; } ;
struct line {scalar_t__ type; struct status* data; } ;
typedef enum request { ____Placeholder_request } request ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;


 scalar_t__ LINE_STAT_NONE ;



 int OPEN_DEFAULT ;
 int OPEN_SPLIT ;
 int REQ_NONE ;
 int open_stage_view (struct view*,struct status*,scalar_t__,int) ;
 int report (char*) ;
 int suffixcmp (int ,int,char*) ;
 scalar_t__ view_is_displayed (struct view*) ;

__attribute__((used)) static enum request
status_enter(struct view *view, struct line *line)
{
 struct status *status = line->data;
 enum open_flags flags = view_is_displayed(view) ? OPEN_SPLIT : OPEN_DEFAULT;

 if (line->type == LINE_STAT_NONE ||
     (!status && line[1].type == LINE_STAT_NONE)) {
  report("No file to diff");
  return REQ_NONE;
 }

 switch (line->type) {
 case 130:
 case 129:
  break;

 case 128:
  if (!status) {
   report("No file to show");
   return REQ_NONE;
  }

  if (!suffixcmp(status->new.name, -1, "/")) {
   report("Cannot display a directory");
   return REQ_NONE;
  }
  break;

 default:
  report("Nothing to enter");
  return REQ_NONE;
 }

 open_stage_view(view, status, line->type, flags);
 return REQ_NONE;
}
