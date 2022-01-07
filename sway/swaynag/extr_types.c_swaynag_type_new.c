
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaynag_type {int bar_border_thickness; int message_padding; int details_border_thickness; int button_border_thickness; int button_gap; int button_gap_close; int button_margin_right; int button_padding; int name; } ;


 struct swaynag_type* calloc (int,int) ;
 int strdup (char const*) ;
 int sway_abort (char*,char const*) ;

struct swaynag_type *swaynag_type_new(const char *name) {
 struct swaynag_type *type = calloc(1, sizeof(struct swaynag_type));
 if (!type) {
  sway_abort("Failed to allocate type: %s", name);
 }
 type->name = strdup(name);
 type->bar_border_thickness = -1;
 type->message_padding = -1;
 type->details_border_thickness = -1;
 type->button_border_thickness = -1;
 type->button_gap = -1;
 type->button_gap_close = -1;
 type->button_margin_right = -1;
 type->button_padding = -1;
 return type;
}
