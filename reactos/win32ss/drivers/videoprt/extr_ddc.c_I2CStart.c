
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PVOID ;
typedef int PI2C_CALLBACKS ;
typedef int BOOL ;


 int DELAY_HALF () ;
 int FALSE ;
 int I2CStop (int ,int ) ;
 int I2CWrite (int ,int ,int ) ;
 int INFO_ (int ,char*) ;
 scalar_t__ LOW ;
 scalar_t__ READ_SCL () ;
 scalar_t__ READ_SDA () ;
 int TRUE ;
 int VIDEOPRT ;
 int WARN_ (int ,char*,...) ;
 int WRITE_SDA (scalar_t__) ;

__attribute__((used)) static BOOL
I2CStart(PVOID HwDeviceExtension, PI2C_CALLBACKS i2c, UCHAR Address)
{

   if (READ_SDA() == LOW || READ_SCL() == LOW)
     {
        WARN_(VIDEOPRT, "I2CStart: Bus is not free!\n");
        return FALSE;
     }


   WRITE_SDA(LOW);
   DELAY_HALF();
   if (!I2CWrite(HwDeviceExtension, i2c, Address))
     {

        I2CStop(HwDeviceExtension, i2c);
        WARN_(VIDEOPRT, "I2CStart: Device not found (Address = 0x%x)\n", Address);
        return FALSE;
     }

   INFO_(VIDEOPRT, "I2CStart: SUCCESS!\n");
   return TRUE;
}
