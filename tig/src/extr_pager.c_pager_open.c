
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int private; int lines; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;


 int OPEN_PREPARED ;
 int REQ_PROMPT ;
 int SUCCESS ;
 int begin_update (struct view*,int *,int *,int) ;
 int diff_init_highlight (struct view*,int ) ;
 int error (char*,int ) ;
 int get_view_key (struct view*,int ) ;
 int open_from_stdin (int) ;

__attribute__((used)) static enum status_code
pager_open(struct view *view, enum open_flags flags)
{
 enum status_code code;

 if (!open_from_stdin(flags) && !view->lines && !(flags & OPEN_PREPARED))
  return error("No pager content, press %s to run command from prompt",
        get_view_key(view, REQ_PROMPT));

 code = begin_update(view, ((void*)0), ((void*)0), flags);
 if (code != SUCCESS)
  return code;

 return diff_init_highlight(view, view->private);
}
