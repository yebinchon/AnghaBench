
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server {int tunnel_forward; int local_port; int serial; } ;


 int LOGW (char*) ;
 int enable_tunnel_forward (int ,int ) ;
 scalar_t__ enable_tunnel_reverse (int ,int ) ;

__attribute__((used)) static bool
enable_tunnel(struct server *server) {
    if (enable_tunnel_reverse(server->serial, server->local_port)) {
        return 1;
    }

    LOGW("'adb reverse' failed, fallback to 'adb forward'");
    server->tunnel_forward = 1;
    return enable_tunnel_forward(server->serial, server->local_port);
}
