
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vioapic {int vm; TYPE_1__* rtbl; } ;
struct TYPE_2__ {int reg; } ;


 int APIC_ID_SHIFT ;
 int IOART_DELMOD ;
 int IOART_DESTMOD ;
 int IOART_DESTPHY ;
 int IOART_INTMASK ;
 int IOART_INTMSET ;
 int IOART_INTVEC ;
 int IOART_REM_IRR ;
 int IOART_TRGRLVL ;
 int KASSERT (int,char*) ;
 int REDIR_ENTRIES ;
 int VIOAPIC_CTR1 (struct vioapic*,char*,int) ;
 int vlapic_deliver_intr (int ,int,int,int,int,int) ;

__attribute__((used)) static void
vioapic_send_intr(struct vioapic *vioapic, int pin)
{
 int vector, delmode;
 uint32_t low, high, dest;
 bool level, phys;

 KASSERT(pin >= 0 && pin < REDIR_ENTRIES,
     ("vioapic_set_pinstate: invalid pin number %d", pin));

 low = (uint32_t) vioapic->rtbl[pin].reg;
 high = (uint32_t) (vioapic->rtbl[pin].reg >> 32);

 if ((low & IOART_INTMASK) == IOART_INTMSET) {
  VIOAPIC_CTR1(vioapic, "ioapic pin%d: masked", pin);
  return;
 }

 phys = ((low & IOART_DESTMOD) == IOART_DESTPHY);
 delmode = low & IOART_DELMOD;
 level = low & IOART_TRGRLVL ? 1 : 0;
 if (level)
  vioapic->rtbl[pin].reg |= IOART_REM_IRR;

 vector = low & IOART_INTVEC;
 dest = high >> APIC_ID_SHIFT;
 vlapic_deliver_intr(vioapic->vm, level, dest, phys, delmode, vector);
}
