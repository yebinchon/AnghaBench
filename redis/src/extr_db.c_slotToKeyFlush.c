
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {int slots_keys_count; int slots_to_keys; } ;


 int memset (int ,int ,int) ;
 int raxFree (int ) ;
 int raxNew () ;
 TYPE_2__ server ;

void slotToKeyFlush(void) {
    raxFree(server.cluster->slots_to_keys);
    server.cluster->slots_to_keys = raxNew();
    memset(server.cluster->slots_keys_count,0,
           sizeof(server.cluster->slots_keys_count));
}
