
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UCHAR ;


 int IOWriteB (int ,int) ;
 scalar_t__ PS2PortQueueRead (int) ;
 int PS2_CONTROL_PORT ;
 int PS2_DATA_PORT ;

__attribute__((used)) static inline
VOID SendMouseCommand(UCHAR Command)
{

    while (PS2PortQueueRead(1)) ;


    IOWriteB(PS2_CONTROL_PORT, 0xD4);
    IOWriteB(PS2_DATA_PORT, Command);
}
