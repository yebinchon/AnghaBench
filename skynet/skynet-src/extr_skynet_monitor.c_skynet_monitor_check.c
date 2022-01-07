
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_monitor {scalar_t__ version; scalar_t__ check_version; scalar_t__ destination; int source; } ;


 int skynet_context_endless (scalar_t__) ;
 int skynet_error (int *,char*,int ,scalar_t__,scalar_t__) ;

void
skynet_monitor_check(struct skynet_monitor *sm) {
 if (sm->version == sm->check_version) {
  if (sm->destination) {
   skynet_context_endless(sm->destination);
   skynet_error(((void*)0), "A message from [ :%08x ] to [ :%08x ] maybe in an endless loop (version = %d)", sm->source , sm->destination, sm->version);
  }
 } else {
  sm->check_version = sm->version;
 }
}
