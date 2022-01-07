
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t font_height; int titlebar_v_padding; } ;


 TYPE_1__* config ;

size_t container_titlebar_height(void) {
 return config->font_height + config->titlebar_v_padding * 2;
}
