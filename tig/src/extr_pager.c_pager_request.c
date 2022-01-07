
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {scalar_t__ type; } ;
typedef enum request { ____Placeholder_request } request ;


 scalar_t__ LINE_COMMIT ;
 int OPEN_SPLIT ;
 int REQ_ENTER ;
 int REQ_NONE ;
 int REQ_SCROLL_LINE_DOWN ;
 int VIEW_OPEN_DIFF ;
 size_t current_view ;
 struct view** display ;
 int open_diff_view (struct view*,int ) ;
 int scroll_view (struct view*,int ) ;
 int update_view_title (struct view*) ;
 scalar_t__ view_has_flags (struct view*,int ) ;

enum request
pager_request(struct view *view, enum request request, struct line *line)
{
 int split = 0;

 if (request != REQ_ENTER)
  return request;

 if (line->type == LINE_COMMIT && view_has_flags(view, VIEW_OPEN_DIFF)) {
  open_diff_view(view, OPEN_SPLIT);
  split = 1;
 }




 if (view == display[current_view])
  scroll_view(view, REQ_SCROLL_LINE_DOWN);




 if (split)
  update_view_title(view);

 return REQ_NONE;
}
