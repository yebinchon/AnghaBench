
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct skynet_monitor {int version; void* destination; void* source; } ;


 int ATOM_INC (int *) ;

void
skynet_monitor_trigger(struct skynet_monitor *sm, uint32_t source, uint32_t destination) {
 sm->source = source;
 sm->destination = destination;
 ATOM_INC(&sm->version);
}
