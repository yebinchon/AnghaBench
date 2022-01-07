
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t font_height; scalar_t__ font_baseline; } ;


 int arrange_root () ;
 TYPE_1__* config ;
 int find_baseline_iterator ;
 int find_font_height_iterator ;
 int root_for_each_container (int ,int*) ;

void config_update_font_height(bool recalculate) {
 size_t prev_max_height = config->font_height;
 config->font_height = 0;
 config->font_baseline = 0;

 root_for_each_container(find_baseline_iterator, &recalculate);
 root_for_each_container(find_font_height_iterator, ((void*)0));

 if (config->font_height != prev_max_height) {
  arrange_root();
 }
}
