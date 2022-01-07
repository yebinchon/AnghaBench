
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vatpic {int dummy; } ;
struct atpic {int icw_num; } ;


 int VATPIC_CTR1 (struct vatpic*,char*,int ) ;

__attribute__((used)) static int
vatpic_icw3(struct vatpic *vatpic, struct atpic *atpic, uint8_t val)
{
 VATPIC_CTR1(vatpic, "atpic icw3 0x%x", val);

 atpic->icw_num++;

 return (0);
}
