
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct msixcap {int table_info; int pba_info; scalar_t__ msgctrl; int capid; } ;


 int CTASSERT (int) ;
 int PCIM_MSIX_BIR_MASK ;
 int PCIY_MSIX ;
 int assert (int) ;
 int bzero (struct msixcap*,int) ;

__attribute__((used)) static void
pci_populate_msixcap(struct msixcap *msixcap, int msgnum, int barnum,
       uint32_t msix_tab_size)
{
 CTASSERT(sizeof(struct msixcap) == 12);

 assert(msix_tab_size % 4096 == 0);

 bzero(msixcap, sizeof(struct msixcap));
 msixcap->capid = PCIY_MSIX;






 msixcap->msgctrl = (uint16_t) (msgnum - 1);






 msixcap->table_info = barnum & PCIM_MSIX_BIR_MASK;
 msixcap->pba_info = msix_tab_size | (barnum & PCIM_MSIX_BIR_MASK);
}
