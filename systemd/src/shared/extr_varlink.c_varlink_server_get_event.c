
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_event ;
struct TYPE_4__ {int * event; } ;
typedef TYPE_1__ VarlinkServer ;


 int assert_return (TYPE_1__*,int *) ;

sd_event *varlink_server_get_event(VarlinkServer *s) {
        assert_return(s, ((void*)0));

        return s->event;
}
