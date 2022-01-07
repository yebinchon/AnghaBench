
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PUCHAR ;


 scalar_t__ I8042_PHYSICAL_BASE ;
 scalar_t__ I8042_STATUS_REGISTER_OFFSET ;
 int inb_p (int ) ;

UCHAR GetKeyStatus(void)
{
    UCHAR ucRet;
    ucRet = inb_p((PUCHAR)(I8042_PHYSICAL_BASE + I8042_STATUS_REGISTER_OFFSET));
    return ucRet;
}
