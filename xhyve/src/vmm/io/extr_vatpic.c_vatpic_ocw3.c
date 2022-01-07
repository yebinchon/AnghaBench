
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vatpic {int dummy; } ;
struct atpic {int smm; int rd_cmd_reg; int poll; } ;


 int OCW3_ESMM ;
 int OCW3_P ;
 int OCW3_RIS ;
 int OCW3_RR ;
 int OCW3_SMM ;
 int VATPIC_CTR1 (struct vatpic*,char*,int) ;
 int VATPIC_CTR2 (struct vatpic*,char*,char*,char*) ;
 scalar_t__ master_atpic (struct vatpic*,struct atpic*) ;

__attribute__((used)) static int
vatpic_ocw3(struct vatpic *vatpic, struct atpic *atpic, uint8_t val)
{
 VATPIC_CTR1(vatpic, "atpic ocw3 0x%x", val);

 if (val & OCW3_ESMM) {
  atpic->smm = val & OCW3_SMM ? 1 : 0;
  VATPIC_CTR2(vatpic, "%s atpic special mask mode %s",
      master_atpic(vatpic, atpic) ? "master" : "slave",
      atpic->smm ? "enabled" : "disabled");
 }

 if (val & OCW3_RR) {

  atpic->rd_cmd_reg = val & OCW3_RIS;


  atpic->poll = ((val & OCW3_P) != 0);
 }

 return (0);
}
