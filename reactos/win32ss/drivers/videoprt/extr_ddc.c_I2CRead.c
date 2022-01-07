
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PVOID ;
typedef int PI2C_CALLBACKS ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int DELAY_HALF () ;
 scalar_t__ HIGH ;
 scalar_t__ LOW ;
 scalar_t__ READ_SCL () ;
 scalar_t__ READ_SDA () ;
 int WRITE_SCL (scalar_t__) ;
 int WRITE_SDA (scalar_t__) ;

__attribute__((used)) static UCHAR
I2CRead(PVOID HwDeviceExtension, PI2C_CALLBACKS i2c, BOOL Ack)
{
   INT Bit = 0x80;
   UCHAR Data = 0;


   WRITE_SCL(LOW);
   WRITE_SDA(HIGH);


   for (Bit = (1 << 7); Bit != 0; Bit >>= 1)
     {
        WRITE_SCL(LOW);
        DELAY_HALF();
        WRITE_SCL(HIGH);
        DELAY_HALF();
        if (READ_SDA() == HIGH)
          Data |= Bit;
     }


   WRITE_SCL(LOW);
   WRITE_SDA(Ack ? LOW : HIGH);
   DELAY_HALF();
   WRITE_SCL(HIGH);
   do
     {
        DELAY_HALF();
     }
   while (READ_SCL() != HIGH);

   return Data;
}
