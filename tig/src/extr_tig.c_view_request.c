
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t lineno; } ;
struct view {TYPE_2__ pos; int * line; TYPE_1__* ops; int lines; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_3__ {int (* request ) (struct view*,int,int *) ;} ;


 int REQ_ENTER ;
 int REQ_NONE ;
 int REQ_REFRESH ;
 int VIEW_SEND_CHILD_ENTER ;
 struct view** display ;
 scalar_t__ forward_request_to_child (struct view*,int) ;
 int opt_focus_child ;
 scalar_t__ opt_send_child_enter ;
 int report (char*) ;
 int stub1 (struct view*,int,int *) ;
 int view_can_refresh (struct view*) ;
 scalar_t__ view_has_flags (struct view*,int ) ;

__attribute__((used)) static enum request
view_request(struct view *view, enum request request)
{
 if (!view || !view->lines)
  return request;

 if (request == REQ_ENTER && !opt_focus_child && opt_send_child_enter &&
     view_has_flags(view, VIEW_SEND_CHILD_ENTER)) {
  struct view *child = display[1];

  if (forward_request_to_child(child, request)) {
   view_request(child, request);
   return REQ_NONE;
  }
 }

 if (request == REQ_REFRESH && !view_can_refresh(view)) {
  report("This view can not be refreshed");
  return REQ_NONE;
 }

 return view->ops->request(view, request, &view->line[view->pos.lineno]);
}
