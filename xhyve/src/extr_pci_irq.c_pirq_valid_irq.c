
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_PERMITTED (int) ;
 int PIRQ_DIS ;
 int PIRQ_IRQ ;

__attribute__((used)) static bool
pirq_valid_irq(int reg)
{
 if (reg & PIRQ_DIS)
  return (0);
 return (IRQ_PERMITTED(reg & PIRQ_IRQ));
}
