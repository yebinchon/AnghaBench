
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {struct view* parent; } ;
struct status {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int main_status_exists (struct view*,int) ;
 struct view main_view ;
 int status_exists (struct view*,struct status*,int) ;
 struct view status_view ;

__attribute__((used)) static bool
stage_exists(struct view *view, struct status *status, enum line_type type)
{
 struct view *parent = view->parent;

 if (parent == &status_view)
  return status_exists(parent, status, type);

 if (parent == &main_view)
  return main_status_exists(parent, type);

 return 0;
}
