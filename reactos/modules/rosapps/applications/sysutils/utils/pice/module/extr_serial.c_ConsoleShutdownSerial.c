
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Connect (int,int) ;
 int ENTER_FUNC () ;
 int FlushSerialBuffer () ;
 int LEAVE_FUNC () ;
 int PICE_free (scalar_t__) ;
 scalar_t__ pScreenBufferSerial ;

void ConsoleShutdownSerial(void)
{
    ENTER_FUNC();

    Connect(80,25);

    FlushSerialBuffer();

    if(pScreenBufferSerial)
        PICE_free(pScreenBufferSerial);

    LEAVE_FUNC();
}
