
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm {int dummy; } ;
struct vioapic {TYPE_1__* rtbl; struct vm* vm; } ;
struct TYPE_2__ {int reg; } ;


 int REDIR_ENTRIES ;
 int VIOAPIC_LOCK_INIT (struct vioapic*) ;
 int assert (struct vioapic*) ;
 int bzero (struct vioapic*,int) ;
 struct vioapic* malloc (int) ;

struct vioapic *
vioapic_init(struct vm *vm)
{
 int i;
 struct vioapic *vioapic;

 vioapic = malloc(sizeof(struct vioapic));
 assert(vioapic);
 bzero(vioapic, sizeof(struct vioapic));
 vioapic->vm = vm;

 VIOAPIC_LOCK_INIT(vioapic);


 for (i = 0; i < REDIR_ENTRIES; i++)
  vioapic->rtbl[i].reg = 0x0001000000010000UL;

 return (vioapic);
}
