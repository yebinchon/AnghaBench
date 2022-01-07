
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* userdata; } ;
typedef TYPE_1__ Varlink ;


 int assert_return (TYPE_1__*,int *) ;

void* varlink_get_userdata(Varlink *v) {
        assert_return(v, ((void*)0));

        return v->userdata;
}
