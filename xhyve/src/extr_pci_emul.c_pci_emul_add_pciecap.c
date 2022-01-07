
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pciecap {int pcie_capabilities; int link_capabilities; int link_status; int capid; } ;
struct pci_devinst {int dummy; } ;
typedef int pciecap ;


 int CTASSERT (int) ;
 int PCIECAP_VERSION ;
 int PCIEM_TYPE_ROOT_PORT ;
 int PCIY_EXPRESS ;
 int bzero (struct pciecap*,int) ;
 int pci_emul_add_capability (struct pci_devinst*,int *,int) ;

int
pci_emul_add_pciecap(struct pci_devinst *pi, int type)
{
 int err;
 struct pciecap pciecap;

 CTASSERT(sizeof(struct pciecap) == 60);

 if (type != PCIEM_TYPE_ROOT_PORT)
  return (-1);

 bzero(&pciecap, sizeof(pciecap));

 pciecap.capid = PCIY_EXPRESS;
 pciecap.pcie_capabilities = PCIECAP_VERSION | PCIEM_TYPE_ROOT_PORT;
 pciecap.link_capabilities = 0x411;
 pciecap.link_status = 0x11;

 err = pci_emul_add_capability(pi, (u_char *)&pciecap, sizeof(pciecap));
 return (err);
}
