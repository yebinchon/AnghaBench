
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_t ;


 char* find_fallback_icon (int *,char*,int*,int*) ;
 char* find_icon_with_theme (int *,int *,char*,int,char*,int*,int*) ;

char *find_icon(list_t *themes, list_t *basedirs, char *name, int size,
  char *theme, int *min_size, int *max_size) {

 char *icon = ((void*)0);
 if (theme) {
  icon = find_icon_with_theme(basedirs, themes, name, size, theme,
    min_size, max_size);
 }
 if (!icon) {
  icon = find_icon_with_theme(basedirs, themes, name, size, "Hicolor",
    min_size, max_size);
 }
 if (!icon) {
  icon = find_fallback_icon(basedirs, name, min_size, max_size);
 }
 return icon;
}
