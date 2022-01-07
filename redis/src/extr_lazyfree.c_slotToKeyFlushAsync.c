
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int numele; } ;
typedef TYPE_2__ rax ;
struct TYPE_8__ {TYPE_1__* cluster; } ;
struct TYPE_6__ {int slots_keys_count; TYPE_2__* slots_to_keys; } ;


 int BIO_LAZY_FREE ;
 int atomicIncr (int ,int ) ;
 int bioCreateBackgroundJob (int ,int *,int *,TYPE_2__*) ;
 int lazyfree_objects ;
 int memset (int ,int ,int) ;
 TYPE_2__* raxNew () ;
 TYPE_3__ server ;

void slotToKeyFlushAsync(void) {
    rax *old = server.cluster->slots_to_keys;

    server.cluster->slots_to_keys = raxNew();
    memset(server.cluster->slots_keys_count,0,
           sizeof(server.cluster->slots_keys_count));
    atomicIncr(lazyfree_objects,old->numele);
    bioCreateBackgroundJob(BIO_LAZY_FREE,((void*)0),((void*)0),old);
}
