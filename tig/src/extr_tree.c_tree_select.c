
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {scalar_t__* ref; TYPE_1__* env; } ;
struct tree_entry {int id; int name; } ;
struct line {scalar_t__ type; struct tree_entry* data; } ;
struct TYPE_2__ {int directory; int file; scalar_t__* blob; } ;


 scalar_t__ LINE_DIRECTORY ;
 scalar_t__ LINE_FILE ;
 scalar_t__ LINE_HEADER ;
 int string_copy (scalar_t__*,char*) ;
 int string_copy_rev (scalar_t__*,int ) ;
 int string_format (int ,char*,int ,...) ;
 int tree_path (struct line*) ;
 scalar_t__ tree_path_is_parent (int ) ;

__attribute__((used)) static void
tree_select(struct view *view, struct line *line)
{
 struct tree_entry *entry = line->data;

 if (line->type == LINE_HEADER) {
  string_format(view->ref, "Files in /%s", view->env->directory);
  return;
 }

 if (line->type == LINE_DIRECTORY && tree_path_is_parent(entry->name)) {
  string_copy(view->ref, "Open parent directory");
  view->env->blob[0] = 0;
  return;
 }

 if (line->type == LINE_FILE) {
  string_copy_rev(view->env->blob, entry->id);
  string_format(view->env->file, "%s%s", view->env->directory, tree_path(line));
 }

 string_copy_rev(view->ref, entry->id);
}
