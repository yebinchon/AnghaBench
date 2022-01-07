
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {TYPE_1__* ops; int vid; int lines; } ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {int id; } ;


 int OPEN_ALWAYS_LOAD ;
 int OPEN_REFRESH ;
 int strcmp (int ,int ) ;
 int view_can_refresh (struct view*) ;

__attribute__((used)) static bool
view_no_refresh(struct view *view, enum open_flags flags)
{
 bool reload = !!(flags & OPEN_ALWAYS_LOAD) || !view->lines;

 return (!reload && !strcmp(view->vid, view->ops->id)) ||
        ((flags & OPEN_REFRESH) && !view_can_refresh(view));
}
