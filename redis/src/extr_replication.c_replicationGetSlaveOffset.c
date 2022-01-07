
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* cached_master; TYPE_1__* master; int * masterhost; } ;
struct TYPE_5__ {long long reploff; } ;
struct TYPE_4__ {long long reploff; } ;


 TYPE_3__ server ;

long long replicationGetSlaveOffset(void) {
    long long offset = 0;

    if (server.masterhost != ((void*)0)) {
        if (server.master) {
            offset = server.master->reploff;
        } else if (server.cached_master) {
            offset = server.cached_master->reploff;
        }
    }




    if (offset < 0) offset = 0;
    return offset;
}
