
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int vid; } ;
struct line {int dummy; } ;
typedef enum request { ____Placeholder_request } request ;




 int REQ_NONE ;


 int diff_common_edit (struct view*,int,struct line*) ;
 int diff_common_enter (struct view*,int,struct line*) ;
 int diff_trace_origin (struct view*,struct line*) ;
 int pager_request (struct view*,int,struct line*) ;
 int refresh_view (struct view*) ;
 int reload_view (struct view*) ;
 int string_rev_is_null (int ) ;

__attribute__((used)) static enum request
diff_request(struct view *view, enum request request, struct line *line)
{
 switch (request) {
 case 128:
  return diff_trace_origin(view, line);

 case 131:
  return diff_common_edit(view, request, line);

 case 130:
  return diff_common_enter(view, request, line);

 case 129:
  if (string_rev_is_null(view->vid))
   refresh_view(view);
  else
   reload_view(view);
  return REQ_NONE;

 default:
  return pager_request(view, request, line);
 }
}
