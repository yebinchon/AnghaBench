
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int text; } ;
struct TYPE_5__ {int text; } ;
struct TYPE_7__ {TYPE_2__ button_down; TYPE_1__ button_up; } ;
struct swaynag {int scale; TYPE_4__* type; TYPE_3__ details; } ;
typedef int cairo_t ;
struct TYPE_8__ {int button_border_thickness; int button_padding; int font; } ;


 int get_text_size (int *,int ,int*,int*,int *,int,int,char*,int ) ;

__attribute__((used)) static int get_detailed_scroll_button_width(cairo_t *cairo,
  struct swaynag *swaynag) {
 int up_width, down_width, temp_height;
 get_text_size(cairo, swaynag->type->font, &up_width, &temp_height, ((void*)0),
   swaynag->scale, 1,
   "%s", swaynag->details.button_up.text);
 get_text_size(cairo, swaynag->type->font, &down_width, &temp_height, ((void*)0),
   swaynag->scale, 1,
   "%s", swaynag->details.button_down.text);

 int text_width = up_width > down_width ? up_width : down_width;
 int border = swaynag->type->button_border_thickness * swaynag->scale;
 int padding = swaynag->type->button_padding * swaynag->scale;

 return text_width + border * 2 + padding * 2;
}
