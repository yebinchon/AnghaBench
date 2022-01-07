
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view_column {int opt; int type; struct view_column* next; } ;
struct sort_state {scalar_t__ reverse; } ;
struct view {char const* name; struct view_column* columns; struct sort_state sort; } ;
struct option_info {int dummy; } ;
typedef enum view_flag { ____Placeholder_view_flag } view_flag ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int ARRAY_SIZE (int ) ;
 int VIEW_SORTABLE ;
 int enum_equals_static (char*,char const*,size_t) ;
 int error (char*,char const*) ;
 struct option_info* find_column_option_info (int ,int *,char const*,struct option_info*,char const**) ;
 struct option_info* find_option_info (int ,int ,char*,char const*) ;
 int get_sort_field (struct view*) ;
 int option_toggles ;
 int prompt_toggle_option (struct view*,char const**,char const*,struct option_info*,int*) ;
 int sort_view (struct view*,int) ;
 size_t strlen (char const*) ;
 int success (char*,char const*,char*) ;
 char* view_column_name (int ) ;
 int view_has_flags (struct view*,int ) ;

__attribute__((used)) static enum status_code
prompt_toggle(struct view *view, const char *argv[], enum view_flag *flags)
{
 const char *option = argv[1];
 size_t optionlen = option ? strlen(option) : 0;
 struct option_info template;
 struct option_info *toggle;
 struct view_column *column;
 const char *column_name;

 if (!option)
  return error("%s", "No option name given to :toggle");

 if (enum_equals_static("sort-field", option, optionlen) ||
     enum_equals_static("sort-order", option, optionlen)) {
  if (!view_has_flags(view, VIEW_SORTABLE)) {
   return error("Sorting is not yet supported for the %s view", view->name);
  } else {
   bool sort_field = enum_equals_static("sort-field", option, optionlen);
   struct sort_state *sort = &view->sort;

   sort_view(view, sort_field);
   return success("set %s = %s", option,
    sort_field ? view_column_name(get_sort_field(view))
        : sort->reverse ? "descending" : "ascending");
  }
 }

 toggle = find_option_info(option_toggles, ARRAY_SIZE(option_toggles), "", option);
 if (toggle)
  return prompt_toggle_option(view, argv, "", toggle, flags);

 for (column = view->columns; column; column = column->next) {
  toggle = find_column_option_info(column->type, &column->opt, option, &template, &column_name);
  if (toggle)
   return prompt_toggle_option(view, argv, column_name, toggle, flags);
 }

 return error("`:toggle %s` not supported", option);
}
