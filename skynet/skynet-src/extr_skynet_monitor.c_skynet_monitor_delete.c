
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_monitor {int dummy; } ;


 int skynet_free (struct skynet_monitor*) ;

void
skynet_monitor_delete(struct skynet_monitor *sm) {
 skynet_free(sm);
}
