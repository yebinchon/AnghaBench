
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int netif; } ;
typedef TYPE_1__ MachineStatusInfo ;


 int free (int ) ;
 int zero (TYPE_1__) ;

__attribute__((used)) static void machine_status_info_clear(MachineStatusInfo *info) {
        if (info) {
                free(info->netif);
                zero(*info);
        }
}
