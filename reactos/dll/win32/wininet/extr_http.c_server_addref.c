
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef TYPE_1__ server_t ;


 int InterlockedIncrement (int *) ;

void server_addref(server_t *server)
{
    InterlockedIncrement(&server->ref);
}
