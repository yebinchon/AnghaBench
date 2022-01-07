
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server {int serial; int local_port; scalar_t__ tunnel_forward; } ;


 int disable_tunnel_forward (int ,int ) ;
 int disable_tunnel_reverse (int ) ;

__attribute__((used)) static bool
disable_tunnel(struct server *server) {
    if (server->tunnel_forward) {
        return disable_tunnel_forward(server->serial, server->local_port);
    }
    return disable_tunnel_reverse(server->serial);
}
