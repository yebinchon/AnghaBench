
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct sway_view {TYPE_1__ urgent; } ;



bool view_is_urgent(struct sway_view *view) {
 return view->urgent.tv_sec || view->urgent.tv_nsec;
}
