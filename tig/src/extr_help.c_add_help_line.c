
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct keymap {int dummy; } ;
struct help {struct keymap* keymap; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int add_line_alloc (struct view*,struct help**,int,int ,int) ;

__attribute__((used)) static bool
add_help_line(struct view *view, struct help **help_ptr, struct keymap *keymap, enum line_type type)
{
 struct help *help;

 if (!add_line_alloc(view, &help, type, 0, 0))
  return 0;
 help->keymap = keymap;
 if (help_ptr)
  *help_ptr = help;
 return 1;
}
