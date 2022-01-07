
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int link; } ;
struct TYPE_9__ {int link; } ;
struct TYPE_8__ {int link; } ;
struct TYPE_7__ {int link; } ;
struct TYPE_12__ {int link; } ;
struct TYPE_11__ {int link; } ;
struct sway_tablet_pad {TYPE_4__ tablet_destroy; TYPE_3__ surface_destroy; TYPE_2__ ring; TYPE_1__ strip; TYPE_6__ button; TYPE_5__ attach; int link; } ;


 int free (struct sway_tablet_pad*) ;
 int wl_list_remove (int *) ;

void sway_tablet_pad_destroy(struct sway_tablet_pad *tablet_pad) {
 if (!tablet_pad) {
  return;
 }

 wl_list_remove(&tablet_pad->link);
 wl_list_remove(&tablet_pad->attach.link);
 wl_list_remove(&tablet_pad->button.link);
 wl_list_remove(&tablet_pad->strip.link);
 wl_list_remove(&tablet_pad->ring.link);
 wl_list_remove(&tablet_pad->surface_destroy.link);
 wl_list_remove(&tablet_pad->tablet_destroy.link);

 free(tablet_pad);
}
