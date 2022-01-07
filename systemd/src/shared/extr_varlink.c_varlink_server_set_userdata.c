
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* userdata; } ;
typedef TYPE_1__ VarlinkServer ;


 int assert_return (TYPE_1__*,int *) ;

void* varlink_server_set_userdata(VarlinkServer *s, void *userdata) {
        void *ret;

        assert_return(s, ((void*)0));

        ret = s->userdata;
        s->userdata = userdata;

        return ret;
}
