
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct icon_theme {char const* name; } ;
struct TYPE_3__ {scalar_t__ length; struct icon_theme** items; } ;
typedef TYPE_1__ list_t ;


 int SWAY_DEBUG ;
 int SWAY_INFO ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 int sway_log (int ,char*,...) ;

__attribute__((used)) static void log_loaded_themes(list_t *themes) {
 if (themes->length == 0) {
  sway_log(SWAY_INFO, "Warning: no icon themes loaded");
  return;
 }

 const char sep[] = ", ";
 size_t sep_len = strlen(sep);

 size_t len = 0;
 for (int i = 0; i < themes->length; ++i) {
  struct icon_theme *theme = themes->items[i];
  len += strlen(theme->name) + sep_len;
 }

 char *str = malloc(len + 1);
 if (!str) {
  return;
 }
 char *p = str;
 for (int i = 0; i < themes->length; ++i) {
  if (i > 0) {
   memcpy(p, sep, sep_len);
   p += sep_len;
  }

  struct icon_theme *theme = themes->items[i];
  size_t name_len = strlen(theme->name);
  memcpy(p, theme->name, name_len);
  p += name_len;
 }
 *p = '\0';

 sway_log(SWAY_DEBUG, "Loaded icon themes: %s", str);
 free(str);
}
