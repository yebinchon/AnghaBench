
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ server_socket; scalar_t__ event_timer; scalar_t__ resolve_query; } ;
typedef TYPE_1__ Manager ;



__attribute__((used)) static bool manager_is_connected(Manager *m) {


        return m->server_socket >= 0 || m->resolve_query || m->event_timer;
}
