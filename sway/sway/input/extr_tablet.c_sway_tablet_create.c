
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_tablet {struct sway_seat_device* seat_device; int link; } ;
struct sway_seat_device {struct sway_tablet* tablet; } ;
struct sway_seat {TYPE_1__* cursor; } ;
struct TYPE_2__ {int tablets; } ;


 struct sway_tablet* calloc (int,int) ;
 int sway_assert (struct sway_tablet*,char*) ;
 int wl_list_insert (int *,int *) ;

struct sway_tablet *sway_tablet_create(struct sway_seat *seat,
  struct sway_seat_device *device) {
 struct sway_tablet *tablet =
  calloc(1, sizeof(struct sway_tablet));
 if (!sway_assert(tablet, "could not allocate sway tablet for seat")) {
  return ((void*)0);
 }

 wl_list_insert(&seat->cursor->tablets, &tablet->link);

 device->tablet = tablet;
 tablet->seat_device = device;

 return tablet;
}
