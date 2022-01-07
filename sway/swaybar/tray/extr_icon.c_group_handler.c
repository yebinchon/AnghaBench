
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icon_theme_subdir {int size; int type; int max_size; int min_size; int threshold; int name; } ;
struct icon_theme {TYPE_1__* subdirs; int directories; } ;
struct TYPE_2__ {int length; struct icon_theme_subdir** items; } ;





 struct icon_theme_subdir* calloc (int,int) ;
 int cmp_group ;
 int list_add (TYPE_1__*,struct icon_theme_subdir*) ;
 int list_seq_find (int ,int ,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strdup (char*) ;
 int validate_icon_theme (struct icon_theme*) ;

__attribute__((used)) static bool group_handler(char *old_group, char *new_group,
  struct icon_theme *theme) {
 if (!old_group) {
  return strcmp(new_group, "Icon Theme");
 }

 if (strcmp(old_group, "Icon Theme") == 0) {
  if (!validate_icon_theme(theme)) {
   return 1;
  }
 } else {
  if (theme->subdirs->length == 0) {
   return 0;
  }

  struct icon_theme_subdir *subdir =
   theme->subdirs->items[theme->subdirs->length - 1];
  if (!subdir->size) return 1;

  switch (subdir->type) {
  case 130: subdir->max_size = subdir->min_size = subdir->size;
   break;
  case 129: {
   if (!subdir->max_size) subdir->max_size = subdir->size;
   if (!subdir->min_size) subdir->min_size = subdir->size;
   break;
  }
  case 128:
   subdir->max_size = subdir->size + subdir->threshold;
   subdir->min_size = subdir->size - subdir->threshold;
  }
 }

 if (new_group && list_seq_find(theme->directories, cmp_group, new_group) != -1) {
  struct icon_theme_subdir *subdir = calloc(1, sizeof(struct icon_theme_subdir));
  if (!subdir) {
   return 1;
  }
  subdir->name = strdup(new_group);
  subdir->threshold = 2;
  list_add(theme->subdirs, subdir);
 }

 return 0;
}
