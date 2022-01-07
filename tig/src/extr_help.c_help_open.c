
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int dummy; } ;
struct help_request_iterator {struct view* member_0; } ;
struct TYPE_2__ {char* text; } ;
struct help {TYPE_1__ data; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;


 int ERROR_OUT_OF_MEMORY ;
 int LINE_DEFAULT ;
 int LINE_HEADER ;
 int SUCCESS ;
 int add_help_line (struct view*,struct help**,int *,int ) ;
 int error (char*) ;
 scalar_t__ foreach_key (int ,struct help_request_iterator*,int) ;
 int help_keys_visitor ;
 int reset_view (struct view*) ;

__attribute__((used)) static enum status_code
help_open(struct view *view, enum open_flags flags)
{
 struct help_request_iterator iterator = { view };
 struct help *help;

 reset_view(view);

 if (!add_help_line(view, &help, ((void*)0), LINE_HEADER))
  return ERROR_OUT_OF_MEMORY;
 help->data.text = "Quick reference for tig keybindings:";

 if (!add_help_line(view, &help, ((void*)0), LINE_DEFAULT))
  return ERROR_OUT_OF_MEMORY;
 help->data.text = "";

 return foreach_key(help_keys_visitor, &iterator, 1)
  ? SUCCESS : error("Failed to render key bindings");
}
