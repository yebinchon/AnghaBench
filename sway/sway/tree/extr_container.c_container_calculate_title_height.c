
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {int title_height; int title_baseline; int formatted_title; } ;
typedef int cairo_t ;
struct TYPE_2__ {int pango_markup; int font; } ;


 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 TYPE_1__* config ;
 int get_text_size (int *,int ,int *,int*,int*,int,int ,char*,int ) ;

void container_calculate_title_height(struct sway_container *container) {
 if (!container->formatted_title) {
  container->title_height = 0;
  return;
 }
 cairo_t *cairo = cairo_create(((void*)0));
 int height;
 int baseline;
 get_text_size(cairo, config->font, ((void*)0), &height, &baseline, 1,
   config->pango_markup, "%s", container->formatted_title);
 cairo_destroy(cairo);
 container->title_height = height;
 container->title_baseline = baseline;
}
