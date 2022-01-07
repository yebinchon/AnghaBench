
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vioapic {TYPE_1__* rtbl; } ;
struct TYPE_2__ {int acnt; } ;


 int KASSERT (int,char*) ;
 int REDIR_ENTRIES ;
 int VIOAPIC_CTR1 (struct vioapic*,char*,int) ;
 int VIOAPIC_CTR2 (struct vioapic*,char*,int,int) ;
 int VIOAPIC_CTR3 (struct vioapic*,char*,int,int ,int) ;
 int pinstate_str (int) ;
 int vioapic_send_intr (struct vioapic*,int) ;

__attribute__((used)) static void
vioapic_set_pinstate(struct vioapic *vioapic, int pin, bool newstate)
{
 int oldcnt, newcnt;
 bool needintr;

 KASSERT(pin >= 0 && pin < REDIR_ENTRIES,
     ("vioapic_set_pinstate: invalid pin number %d", pin));

 oldcnt = vioapic->rtbl[pin].acnt;
 if (newstate)
  vioapic->rtbl[pin].acnt++;
 else
  vioapic->rtbl[pin].acnt--;
 newcnt = vioapic->rtbl[pin].acnt;

 if (newcnt < 0) {
  VIOAPIC_CTR2(vioapic, "ioapic pin%d: bad acnt %d",
      pin, newcnt);
 }

 needintr = 0;
 if (oldcnt == 0 && newcnt == 1) {
  needintr = 1;
  VIOAPIC_CTR1(vioapic, "ioapic pin%d: asserted", pin);
 } else if (oldcnt == 1 && newcnt == 0) {
  VIOAPIC_CTR1(vioapic, "ioapic pin%d: deasserted", pin);
 } else {




 }
 if (needintr)
  vioapic_send_intr(vioapic, pin);
}
