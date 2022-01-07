
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_seat {int dummy; } ;
struct sway_node {int dummy; } ;


 int new_node ;
 struct sway_seat* seat ;
 int seat_node_from_node (struct sway_seat*,struct sway_node*) ;
 struct sway_seat* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void handle_new_node(struct wl_listener *listener, void *data) {
 struct sway_seat *seat = wl_container_of(listener, seat, new_node);
 struct sway_node *node = data;
 seat_node_from_node(seat, node);
}
