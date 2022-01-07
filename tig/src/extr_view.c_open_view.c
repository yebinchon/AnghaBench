
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int name; scalar_t__ keymap; struct view* parent; } ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {int * git_dir; } ;


 int OPEN_PREPARED ;
 int OPEN_REFRESH ;
 int OPEN_RELOAD ;
 int VIEW_NO_GIT_DIR ;
 int assert (int) ;
 struct view** display ;
 int displayed_views () ;
 scalar_t__ get_keymap (int ,int ) ;
 int load_view (struct view*,struct view*,int) ;
 TYPE_1__ repo ;
 int report (char*,int ) ;
 int strlen (int ) ;
 int view_has_flags (struct view*,int ) ;

void
open_view(struct view *prev, struct view *view, enum open_flags flags)
{
 bool reload = !!(flags & (OPEN_RELOAD | OPEN_PREPARED));
 int nviews = displayed_views();

 assert(flags ^ OPEN_REFRESH);

 if (view == prev && nviews == 1 && !reload) {
  report("Already in %s view", view->name);
  return;
 }

 if (!view_has_flags(view, VIEW_NO_GIT_DIR) && !repo.git_dir[0]) {
  report("The %s view is disabled in pager mode", view->name);
  return;
 }


 if (prev && prev->parent && prev == display[1])
  prev = prev->parent;

 if (!view->keymap)
  view->keymap = get_keymap(view->name, strlen(view->name));
 load_view(view, prev ? prev : view, flags);
}
