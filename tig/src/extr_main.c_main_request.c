
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {int type; } ;
typedef enum request { ____Placeholder_request } request ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;


 int LINE_STAT_STAGED ;
 int LINE_STAT_UNSTAGED ;
 int LINE_STAT_UNTRACKED ;
 int OPEN_DEFAULT ;
 int OPEN_SPLIT ;

 int REQ_MOVE_DOWN ;


 int REQ_MOVE_UP ;

 int REQ_NONE ;




 struct view** display ;
 int find_merge (struct view*,int) ;
 int goto_id (struct view*,char*,int,int) ;
 int load_refs (int) ;
 int maximize_view (struct view*,int) ;
 int open_diff_view (struct view*,int) ;
 int open_stage_view (struct view*,int *,int ,int) ;
 int open_status_view (struct view*,int,int) ;
 int refresh_view (struct view*) ;
 scalar_t__ view_is_displayed (struct view*) ;

enum request
main_request(struct view *view, enum request request, struct line *line)
{
 enum open_flags flags = (view_is_displayed(view) && request != 128)
    ? OPEN_SPLIT : OPEN_DEFAULT;

 switch (request) {
 case 132:
 case 130:
  if (view_is_displayed(view) && display[0] != view)
   return request;


  return request == 132 ? REQ_MOVE_DOWN : REQ_MOVE_UP;

 case 128:
 case 135:
  if (view_is_displayed(view) && display[0] != view)
   maximize_view(view, 1);

  if (line->type == LINE_STAT_UNSTAGED
      || line->type == LINE_STAT_STAGED)
   open_stage_view(view, ((void*)0), line->type, flags);
  else if (line->type == LINE_STAT_UNTRACKED)
   open_status_view(view, 1, flags);
  else
   open_diff_view(view, flags);
  break;

 case 129:
  load_refs(1);
  refresh_view(view);
  break;

 case 131:
  goto_id(view, "%(commit)^", 1, 0);
  break;

 case 134:
 case 133:
  find_merge(view, request);
  break;

 default:
  return request;
 }

 return REQ_NONE;
}
