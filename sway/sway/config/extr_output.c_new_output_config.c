
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_config {int enabled; int width; int height; int refresh_rate; int custom_mode; int x; int y; int scale; int transform; int subpixel; int * name; } ;


 int WL_OUTPUT_SUBPIXEL_UNKNOWN ;
 struct output_config* calloc (int,int) ;
 int free (struct output_config*) ;
 int * strdup (char const*) ;

struct output_config *new_output_config(const char *name) {
 struct output_config *oc = calloc(1, sizeof(struct output_config));
 if (oc == ((void*)0)) {
  return ((void*)0);
 }
 oc->name = strdup(name);
 if (oc->name == ((void*)0)) {
  free(oc);
  return ((void*)0);
 }
 oc->enabled = -1;
 oc->width = oc->height = -1;
 oc->refresh_rate = -1;
 oc->custom_mode = -1;
 oc->x = oc->y = -1;
 oc->scale = -1;
 oc->transform = -1;
 oc->subpixel = WL_OUTPUT_SUBPIXEL_UNKNOWN;
 return oc;
}
