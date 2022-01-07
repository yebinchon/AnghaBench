
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int ref; } ;
struct line {int dummy; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_2__ {int vid; } ;


 int OPEN_SPLIT ;

 int REQ_NONE ;

 TYPE_1__** display ;
 int load_refs (int) ;
 int open_diff_view (struct view*,int ) ;
 int refresh_view (struct view*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static enum request
log_request(struct view *view, enum request request, struct line *line)
{
 switch (request) {
 case 128:
  load_refs(1);
  refresh_view(view);
  return REQ_NONE;

 case 129:
  if (!display[1] || strcmp(display[1]->vid, view->ref))
   open_diff_view(view, OPEN_SPLIT);
  return REQ_NONE;

 default:
  return request;
 }
}
