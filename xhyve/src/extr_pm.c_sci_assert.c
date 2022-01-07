
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCI_INT ;
 int sci_active ;
 int xh_vm_isa_assert_irq (int ,int ) ;

__attribute__((used)) static void
sci_assert(void)
{
 if (sci_active)
  return;
 xh_vm_isa_assert_irq(SCI_INT, SCI_INT);
 sci_active = 1;
}
