
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct swaybar_sni {char* status; char* attention_icon_name; char* icon_name; int icon; TYPE_2__* icon_pixmap; TYPE_2__* attention_icon_pixmap; int max_size; int min_size; scalar_t__ icon_theme_path; TYPE_1__* tray; } ;
struct swaybar_pixmap {scalar_t__ size; int pixels; } ;
struct TYPE_9__ {int length; struct swaybar_pixmap** items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_8__ {int themes; int basedirs; } ;


 int CAIRO_FORMAT_ARGB32 ;
 int INT_MAX ;
 int abs (scalar_t__) ;
 int cairo_format_stride_for_width (int ,scalar_t__) ;
 int cairo_image_surface_create_for_data (int ,int ,scalar_t__,scalar_t__,int ) ;
 int cairo_surface_destroy (int ) ;
 TYPE_2__* create_list () ;
 char* find_icon (int ,TYPE_2__*,char*,int,char*,int *,int *) ;
 char* find_icon_in_dir (char*,scalar_t__,int *,int *) ;
 int free (char*) ;
 int list_add (TYPE_2__*,scalar_t__) ;
 int list_cat (TYPE_2__*,int ) ;
 int list_free (TYPE_2__*) ;
 int load_background_image (char*) ;

__attribute__((used)) static void reload_sni(struct swaybar_sni *sni, char *icon_theme,
  int target_size) {
 char *icon_name = sni->status[0] == 'N' ?
  sni->attention_icon_name : sni->icon_name;
 if (icon_name) {
  list_t *icon_search_paths = create_list();
  list_cat(icon_search_paths, sni->tray->basedirs);
  if (sni->icon_theme_path) {
   list_add(icon_search_paths, sni->icon_theme_path);
  }
  char *icon_path = find_icon(sni->tray->themes, icon_search_paths,
    icon_name, target_size, icon_theme,
    &sni->min_size, &sni->max_size);
  list_free(icon_search_paths);
  if (!icon_path && sni->icon_theme_path) {
   icon_path = find_icon_in_dir(icon_name, sni->icon_theme_path,
     &sni->min_size, &sni->max_size);
  }
  if (icon_path) {
   cairo_surface_destroy(sni->icon);
   sni->icon = load_background_image(icon_path);
   free(icon_path);
   return;
  }
 }

 list_t *pixmaps = sni->status[0] == 'N' ?
  sni->attention_icon_pixmap : sni->icon_pixmap;
 if (pixmaps) {
  struct swaybar_pixmap *pixmap = ((void*)0);
  int min_error = INT_MAX;
  for (int i = 0; i < pixmaps->length; ++i) {
   struct swaybar_pixmap *p = pixmaps->items[i];
   int e = abs(target_size - p->size);
   if (e < min_error) {
    pixmap = p;
    min_error = e;
   }
  }
  cairo_surface_destroy(sni->icon);
  sni->icon = cairo_image_surface_create_for_data(pixmap->pixels,
    CAIRO_FORMAT_ARGB32, pixmap->size, pixmap->size,
    cairo_format_stride_for_width(CAIRO_FORMAT_ARGB32, pixmap->size));
 }
}
