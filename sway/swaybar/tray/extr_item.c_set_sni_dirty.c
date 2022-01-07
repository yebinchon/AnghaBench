
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swaybar_sni {TYPE_1__* tray; scalar_t__ max_size; scalar_t__ min_size; scalar_t__ target_size; } ;
struct TYPE_2__ {int bar; } ;


 int set_bar_dirty (int ) ;
 scalar_t__ sni_ready (struct swaybar_sni*) ;

__attribute__((used)) static void set_sni_dirty(struct swaybar_sni *sni) {
 if (sni_ready(sni)) {
  sni->target_size = sni->min_size = sni->max_size = 0;
  set_bar_dirty(sni->tray->bar);
 }
}
