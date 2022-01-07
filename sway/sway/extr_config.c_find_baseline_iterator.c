
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {scalar_t__ title_baseline; } ;
struct TYPE_2__ {scalar_t__ font_baseline; } ;


 TYPE_1__* config ;
 int container_calculate_title_height (struct sway_container*) ;

__attribute__((used)) static void find_baseline_iterator(struct sway_container *con, void *data) {
 bool *recalculate = data;
 if (*recalculate) {
  container_calculate_title_height(con);
 }
 if (con->title_baseline > config->font_baseline) {
  config->font_baseline = con->title_baseline;
 }
}
