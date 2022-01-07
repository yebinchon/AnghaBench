
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slowlog; scalar_t__ slowlog_entry_id; } ;


 int listCreate () ;
 int listSetFreeMethod (int ,int ) ;
 TYPE_1__ server ;
 int slowlogFreeEntry ;

void slowlogInit(void) {
    server.slowlog = listCreate();
    server.slowlog_entry_id = 0;
    listSetFreeMethod(server.slowlog,slowlogFreeEntry);
}
