
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VarlinkServer ;
struct TYPE_4__ {int * server; } ;
typedef TYPE_1__ Varlink ;


 int assert_return (TYPE_1__*,int *) ;

VarlinkServer *varlink_get_server(Varlink *v) {
        assert_return(v, ((void*)0));

        return v->server;
}
