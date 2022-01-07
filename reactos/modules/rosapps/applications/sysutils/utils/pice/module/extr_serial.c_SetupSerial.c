
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;


 int COM1BASE ;
 int COM2BASE ;
 int COM3BASE ;
 int COM4BASE ;
 int FlushSerialBuffer () ;
 int NO_PARITY ;
 int SerialSetOthers (int ,int,int) ;
 int SerialSetSpeed (int) ;
 int usSerialPortBase ;

void SetupSerial(ULONG port,ULONG baudrate)
{
 USHORT ports[]={COM1BASE,COM2BASE,COM3BASE,COM4BASE};

    usSerialPortBase = ports[port-1];
 SerialSetOthers(NO_PARITY,8,1);
 SerialSetSpeed(baudrate);



    FlushSerialBuffer();
}
