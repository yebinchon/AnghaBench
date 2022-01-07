
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct swaynag {int scale; scalar_t__ height; int message; TYPE_1__* type; } ;
typedef int cairo_t ;
struct TYPE_2__ {int message_padding; int font; int text; } ;


 int cairo_move_to (int *,int,int) ;
 int cairo_set_source_u32 (int *,int ) ;
 int get_text_size (int *,int ,int*,int*,int *,int,int,char*,int ) ;
 int pango_printf (int *,int ,scalar_t__,int,char*,int ) ;

__attribute__((used)) static uint32_t render_message(cairo_t *cairo, struct swaynag *swaynag) {
 int text_width, text_height;
 get_text_size(cairo, swaynag->type->font, &text_width, &text_height, ((void*)0),
   swaynag->scale, 1, "%s", swaynag->message);

 int padding = swaynag->type->message_padding * swaynag->scale;

 uint32_t ideal_height = text_height + padding * 2;
 uint32_t ideal_surface_height = ideal_height / swaynag->scale;
 if (swaynag->height < ideal_surface_height) {
  return ideal_surface_height;
 }

 cairo_set_source_u32(cairo, swaynag->type->text);
 cairo_move_to(cairo, padding, (int)(ideal_height - text_height) / 2);
 pango_printf(cairo, swaynag->type->font, swaynag->scale, 0,
   "%s", swaynag->message);

 return ideal_surface_height;
}
