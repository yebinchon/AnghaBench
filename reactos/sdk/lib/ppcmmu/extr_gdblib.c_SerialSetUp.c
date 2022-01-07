
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* serport ;
 int setup (void*,int) ;

void SerialSetUp(int deviceType, void *deviceAddr, int baud)
{
    int i;
    serport = deviceAddr;
    setup(serport, baud);
}
