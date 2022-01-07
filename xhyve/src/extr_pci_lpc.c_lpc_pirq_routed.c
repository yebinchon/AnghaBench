
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * lpc_bridge ;
 int pci_set_cfgdata8 (int *,int,int ) ;
 int pirq_read (int) ;

void
lpc_pirq_routed(void)
{
 int pin;

 if (lpc_bridge == ((void*)0))
  return;

  for (pin = 0; pin < 4; pin++)
  pci_set_cfgdata8(lpc_bridge, 0x60 + pin, pirq_read(pin + 1));
 for (pin = 0; pin < 4; pin++)
  pci_set_cfgdata8(lpc_bridge, 0x68 + pin, pirq_read(pin + 5));
}
