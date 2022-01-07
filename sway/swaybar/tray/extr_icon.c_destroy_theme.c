
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icon_theme_subdir {TYPE_1__* subdirs; struct icon_theme_subdir* name; struct icon_theme_subdir* dir; int directories; struct icon_theme_subdir* inherits; struct icon_theme_subdir* comment; } ;
struct icon_theme {TYPE_1__* subdirs; struct icon_theme* name; struct icon_theme* dir; int directories; struct icon_theme* inherits; struct icon_theme* comment; } ;
struct TYPE_2__ {int length; struct icon_theme_subdir** items; } ;


 int free (struct icon_theme_subdir*) ;
 int list_free (TYPE_1__*) ;
 int list_free_items_and_destroy (int ) ;

__attribute__((used)) static void destroy_theme(struct icon_theme *theme) {
 if (!theme) {
  return;
 }
 free(theme->name);
 free(theme->comment);
 free(theme->inherits);
 list_free_items_and_destroy(theme->directories);
 free(theme->dir);

 for (int i = 0; i < theme->subdirs->length; ++i) {
  struct icon_theme_subdir *subdir = theme->subdirs->items[i];
  free(subdir->name);
  free(subdir);
 }
 list_free(theme->subdirs);
 free(theme);
}
