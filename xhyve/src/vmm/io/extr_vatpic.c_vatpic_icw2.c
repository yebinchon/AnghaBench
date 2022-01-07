
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vatpic {int dummy; } ;
struct atpic {int irq_base; int icw_num; } ;


 int VATPIC_CTR1 (struct vatpic*,char*,int) ;

__attribute__((used)) static int
vatpic_icw2(struct vatpic *vatpic, struct atpic *atpic, uint8_t val)
{
 VATPIC_CTR1(vatpic, "atpic icw2 0x%x", val);

 atpic->irq_base = val & 0xf8;

 atpic->icw_num++;

 return (0);
}
