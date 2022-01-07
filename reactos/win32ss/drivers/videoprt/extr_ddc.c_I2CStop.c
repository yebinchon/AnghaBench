
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;
typedef int PI2C_CALLBACKS ;


 int DELAY_HALF () ;
 int HIGH ;
 int LOW ;
 int WRITE_SCL (int ) ;
 int WRITE_SDA (int ) ;

__attribute__((used)) static VOID
I2CStop(PVOID HwDeviceExtension, PI2C_CALLBACKS i2c)
{
   WRITE_SCL(LOW);
   WRITE_SDA(LOW);
   DELAY_HALF();
   WRITE_SCL(HIGH);
   DELAY_HALF();
   WRITE_SDA(HIGH);
}
