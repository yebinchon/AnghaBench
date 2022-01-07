
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; } ;
struct sway_seat_node {int link; TYPE_1__ destroy; } ;


 int free (struct sway_seat_node*) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void seat_node_destroy(struct sway_seat_node *seat_node) {
 wl_list_remove(&seat_node->destroy.link);
 wl_list_remove(&seat_node->link);
 free(seat_node);
}
