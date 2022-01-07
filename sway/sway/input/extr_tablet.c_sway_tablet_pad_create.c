
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int link; } ;
struct TYPE_12__ {int link; } ;
struct TYPE_11__ {int link; } ;
struct TYPE_10__ {int link; } ;
struct TYPE_9__ {int link; } ;
struct TYPE_8__ {int link; } ;
struct sway_tablet_pad {int link; TYPE_6__ tablet_destroy; TYPE_5__ surface_destroy; TYPE_4__ ring; TYPE_3__ strip; TYPE_2__ button; TYPE_1__ attach; struct sway_seat_device* seat_device; } ;
struct sway_seat_device {int dummy; } ;
struct sway_seat {TYPE_7__* cursor; } ;
struct TYPE_14__ {int tablet_pads; } ;


 struct sway_tablet_pad* calloc (int,int) ;
 int sway_assert (struct sway_tablet_pad*,char*) ;
 int wl_list_init (int *) ;
 int wl_list_insert (int *,int *) ;

struct sway_tablet_pad *sway_tablet_pad_create(struct sway_seat *seat,
  struct sway_seat_device *device) {
 struct sway_tablet_pad *tablet_pad =
  calloc(1, sizeof(struct sway_tablet_pad));
 if (!sway_assert(tablet_pad, "could not allocate sway tablet")) {
  return ((void*)0);
 }

 tablet_pad->seat_device = device;
 wl_list_init(&tablet_pad->attach.link);
 wl_list_init(&tablet_pad->button.link);
 wl_list_init(&tablet_pad->strip.link);
 wl_list_init(&tablet_pad->ring.link);
 wl_list_init(&tablet_pad->surface_destroy.link);
 wl_list_init(&tablet_pad->tablet_destroy.link);

 wl_list_insert(&seat->cursor->tablet_pads, &tablet_pad->link);

 return tablet_pad;
}
