
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PVOID ;
typedef int PI2C_CALLBACKS ;
typedef int BOOL ;


 int DELAY_HALF () ;
 scalar_t__ HIGH ;
 int INFO_ (int ,char*,char*) ;
 scalar_t__ LOW ;
 scalar_t__ READ_SCL () ;
 scalar_t__ READ_SDA () ;
 int VIDEOPRT ;
 int WRITE_SCL (scalar_t__) ;
 int WRITE_SDA (scalar_t__) ;

__attribute__((used)) static BOOL
I2CWrite(PVOID HwDeviceExtension, PI2C_CALLBACKS i2c, UCHAR Data)
{
   UCHAR Bit;
   BOOL Ack;


   for (Bit = (1 << 7); Bit != 0; Bit >>= 1)
     {
        WRITE_SCL(LOW);
        WRITE_SDA((Data & Bit) ? HIGH : LOW);
        DELAY_HALF();
        WRITE_SCL(HIGH);
        DELAY_HALF();
     }


   WRITE_SCL(LOW);
   WRITE_SDA(HIGH);
   DELAY_HALF();
   WRITE_SCL(HIGH);
   do
     {
        DELAY_HALF();
     }
   while (READ_SCL() != HIGH);
   Ack = (READ_SDA() == LOW);
   DELAY_HALF();

   INFO_(VIDEOPRT, "I2CWrite: %s\n", Ack ? "Ack" : "Nak");
   return Ack;
}
