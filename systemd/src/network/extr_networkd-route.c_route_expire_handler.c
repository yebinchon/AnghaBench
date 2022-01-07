
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sd_event_source ;
struct TYPE_5__ {int link; } ;
typedef TYPE_1__ Route ;


 int assert (TYPE_1__*) ;
 int log_warning_errno (int,char*) ;
 int route_free (TYPE_1__*) ;
 int route_remove (TYPE_1__*,int ,int *) ;

int route_expire_handler(sd_event_source *s, uint64_t usec, void *userdata) {
        Route *route = userdata;
        int r;

        assert(route);

        r = route_remove(route, route->link, ((void*)0));
        if (r < 0)
                log_warning_errno(r, "Could not remove route: %m");
        else
                route_free(route);

        return 1;
}
