
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PVOID ;
typedef int PI2C_CALLBACKS ;
typedef int BOOL ;


 int DELAY_HALF () ;
 int HIGH ;
 int I2CStart (int ,int ,int ) ;
 int LOW ;
 int WRITE_SCL (int ) ;
 int WRITE_SDA (int ) ;

__attribute__((used)) static BOOL
I2CRepStart(PVOID HwDeviceExtension, PI2C_CALLBACKS i2c, UCHAR Address)
{

   WRITE_SCL(LOW);
   DELAY_HALF();
   WRITE_SDA(HIGH);
   DELAY_HALF();
   WRITE_SCL(HIGH);
   DELAY_HALF();

   return I2CStart(HwDeviceExtension, i2c, Address);
}
