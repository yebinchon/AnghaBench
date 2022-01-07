
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int item; } ;
struct TYPE_4__ {TYPE_1__ renderer_discoverer_item_deleted; } ;
struct libvlc_event_t {TYPE_2__ u; } ;


 int item_event (int ,char*) ;

__attribute__((used)) static void
renderer_discoverer_item_deleted(const struct libvlc_event_t *p_ev, void *p_data)
{
    (void) p_data;
    item_event(p_ev->u.renderer_discoverer_item_deleted.item, "deleted");
}
