
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct tree_entry {unsigned long size; int id; int mode; int name; } ;
struct line {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int LINE_HEADER ;
 struct line* add_line_alloc (struct view*,struct tree_entry**,int,int ,int) ;
 int string_copy_rev (int ,char const*) ;
 int strlen (char const*) ;
 int strncpy (int ,char const*,int ) ;
 int strtoul (char const*,int *,int) ;
 scalar_t__ tree_path_is_parent (char const*) ;

__attribute__((used)) static struct line *
tree_entry(struct view *view, enum line_type type, const char *path,
    const char *mode, const char *id, unsigned long size)
{
 bool custom = type == LINE_HEADER || tree_path_is_parent(path);
 struct tree_entry *entry;
 struct line *line = add_line_alloc(view, &entry, type, strlen(path), custom);

 if (!line)
  return ((void*)0);

 strncpy(entry->name, path, strlen(path));
 if (mode)
  entry->mode = strtoul(mode, ((void*)0), 8);
 if (id)
  string_copy_rev(entry->id, id);
 entry->size = size;

 return line;
}
