
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct icon_theme_subdir {int min_size; int max_size; int name; } ;
struct icon_theme {char* inherits; int dir; TYPE_1__* subdirs; int name; } ;
struct TYPE_6__ {int length; struct icon_theme** items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_5__ {int length; struct icon_theme_subdir** items; } ;


 char* find_icon_in_subdir (char*,struct icon_theme*,int ,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int theme_exists_in_basedir (int ,struct icon_theme*) ;

__attribute__((used)) static char *find_icon_with_theme(list_t *basedirs, list_t *themes, char *name,
  int size, char *theme_name, int *min_size, int *max_size) {
 struct icon_theme *theme = ((void*)0);
 for (int i = 0; i < themes->length; ++i) {
  theme = themes->items[i];
  if (strcmp(theme->name, theme_name) == 0) {
   break;
  }
  theme = ((void*)0);
 }
 if (!theme) return ((void*)0);

 char *icon = ((void*)0);
 for (int i = 0; i < basedirs->length; ++i) {
  if (!theme_exists_in_basedir(theme->dir, basedirs->items[i])) {
   continue;
  }

  for (int j = theme->subdirs->length - 1; j >= 0; --j) {
   struct icon_theme_subdir *subdir = theme->subdirs->items[j];
   if (size >= subdir->min_size && size <= subdir->max_size) {
    if ((icon = find_icon_in_subdir(name, basedirs->items[i],
        theme->dir, subdir->name))) {
     *min_size = subdir->min_size;
     *max_size = subdir->max_size;
     return icon;
    }
   }
  }
 }


 unsigned smallest_error = -1;
 for (int i = 0; i < basedirs->length; ++i) {
  if (!theme_exists_in_basedir(theme->dir, basedirs->items[i])) {
   continue;
  }
  for (int j = theme->subdirs->length - 1; j >= 0; --j) {
   struct icon_theme_subdir *subdir = theme->subdirs->items[j];
   unsigned error = (size > subdir->max_size ? size - subdir->max_size : 0)
    + (size < subdir->min_size ? subdir->min_size - size : 0);
   if (error < smallest_error) {
    char *test_icon = find_icon_in_subdir(name, basedirs->items[i],
      theme->dir, subdir->name);
    if (test_icon) {
     icon = test_icon;
     smallest_error = error;
     *min_size = subdir->min_size;
     *max_size = subdir->max_size;
    }
   }
  }
 }

 if (!icon && theme->inherits) {
  icon = find_icon_with_theme(basedirs, themes, name, size,
    theme->inherits, min_size, max_size);
 }

 return icon;
}
