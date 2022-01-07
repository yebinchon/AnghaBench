
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* userdata; } ;
typedef TYPE_1__ Varlink ;


 int assert_return (TYPE_1__*,int *) ;

void* varlink_set_userdata(Varlink *v, void *userdata) {
        void *old;

        assert_return(v, ((void*)0));

        old = v->userdata;
        v->userdata = userdata;

        return old;
}
