
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {int type; struct help* data; } ;
struct keymap {int hidden; } ;
struct help {struct keymap* keymap; } ;
typedef enum request { ____Placeholder_request } request ;


 int LINE_SECTION ;

 int REQ_NONE ;

 int refresh_view (struct view*) ;

__attribute__((used)) static enum request
help_request(struct view *view, enum request request, struct line *line)
{
 struct help *help = line->data;

 switch (request) {
 case 129:
  if (line->type == LINE_SECTION) {
   struct keymap *keymap = help->keymap;

   keymap->hidden = !keymap->hidden;
   refresh_view(view);
  }
  return REQ_NONE;

 case 128:
  refresh_view(view);
  return REQ_NONE;

 default:
  return request;
 }
}
