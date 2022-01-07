
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inout_port {int port; int size; int arg; int handler; scalar_t__ flags; int name; } ;
struct TYPE_2__ {int arg; int handler; scalar_t__ flags; int name; } ;


 unsigned int IOPORT_F_DEFAULT ;
 int VERIFY_IOPORT (int,int) ;
 TYPE_1__* inout_handlers ;

int
register_inout(struct inout_port *iop)
{
 int i;

 VERIFY_IOPORT(iop->port, iop->size);





 if ((((unsigned) iop->flags) & IOPORT_F_DEFAULT) == 0) {
  for (i = iop->port; i < iop->port + iop->size; i++) {
   if ((((unsigned) inout_handlers[i].flags) & IOPORT_F_DEFAULT) == 0)
    return (-1);
  }
 }

 for (i = iop->port; i < iop->port + iop->size; i++) {
  inout_handlers[i].name = iop->name;
  inout_handlers[i].flags = iop->flags;
  inout_handlers[i].handler = iop->handler;
  inout_handlers[i].arg = iop->arg;
 }

 return (0);
}
