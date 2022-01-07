
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahci_port {scalar_t__ atapi; } ;
typedef int fis ;


 int FIS_TYPE_REGD2H ;
 int ahci_write_fis (struct ahci_port*,int,int*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void
ahci_write_reset_fis_d2h(struct ahci_port *p)
{
 uint8_t fis[20];

 memset(fis, 0, sizeof(fis));
 fis[0] = FIS_TYPE_REGD2H;
 fis[3] = 1;
 fis[4] = 1;
 if (p->atapi) {
  fis[5] = 0x14;
  fis[6] = 0xeb;
 }
 fis[12] = 1;
 ahci_write_fis(p, FIS_TYPE_REGD2H, fis);
}
