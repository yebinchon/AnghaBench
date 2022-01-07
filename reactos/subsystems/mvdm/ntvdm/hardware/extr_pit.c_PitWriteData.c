
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int WriteStatus; int ReadWriteMode; int CountRegister; int ReloadValue; int CurrentValue; scalar_t__ Bcd; } ;
typedef int* LPBYTE ;
typedef size_t BYTE ;


 int ASSERT (int) ;
 TYPE_1__* PitChannels ;
 int WRITE_PIT_VALUE (TYPE_1__,int) ;

__attribute__((used)) static VOID PitWriteData(BYTE Channel, BYTE Value)
{
    LPBYTE ReadWriteMode = ((void*)0);

    if (PitChannels[Channel].WriteStatus == 0x00)
    {
        PitChannels[Channel].WriteStatus = PitChannels[Channel].ReadWriteMode;
    }

    ASSERT(PitChannels[Channel].WriteStatus != 0);

    ReadWriteMode = &PitChannels[Channel].WriteStatus;

    if (*ReadWriteMode & 1)
    {

        *ReadWriteMode &= ~1;
        PitChannels[Channel].CountRegister &= 0xFF00;
        PitChannels[Channel].CountRegister |= Value;
    }
    else if (*ReadWriteMode & 2)
    {

        *ReadWriteMode &= ~2;
        PitChannels[Channel].CountRegister &= 0x00FF;
        PitChannels[Channel].CountRegister |= Value << 8;
    }


    if (*ReadWriteMode == 0x00)
    {
        if (PitChannels[Channel].CountRegister == 0x0000)
        {

            if (PitChannels[Channel].Bcd)
                PitChannels[Channel].CountRegister = 9999;
            else
                PitChannels[Channel].CountRegister = 0xFFFF;
        }


        PitChannels[Channel].CountRegister =
            WRITE_PIT_VALUE(PitChannels[Channel], PitChannels[Channel].CountRegister);
        PitChannels[Channel].ReloadValue = PitChannels[Channel].CountRegister;


        PitChannels[Channel].CurrentValue = PitChannels[Channel].ReloadValue;
    }
}
