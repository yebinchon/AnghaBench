
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int LatchStatusSet; size_t StatusLatch; scalar_t__ ReadStatus; int OutputLatch; } ;
typedef int * LPWORD ;
typedef int* LPBYTE ;
typedef size_t BYTE ;


 int ASSERT (int) ;
 int FALSE ;
 size_t HIBYTE (int ) ;
 size_t LOBYTE (int ) ;
 TYPE_1__* PitChannels ;
 int PitLatchChannelCount (size_t) ;

__attribute__((used)) static BYTE PitReadData(BYTE Channel)
{
    LPBYTE ReadWriteMode = ((void*)0);
    LPWORD CurrentValue = ((void*)0);





    if (PitChannels[Channel].LatchStatusSet)
    {
        PitChannels[Channel].LatchStatusSet = FALSE;
        return PitChannels[Channel].StatusLatch;
    }


    if (PitChannels[Channel].ReadStatus == 0) PitLatchChannelCount(Channel);


    ASSERT(PitChannels[Channel].ReadStatus != 0);

    ReadWriteMode = &PitChannels[Channel].ReadStatus ;
    CurrentValue = &PitChannels[Channel].OutputLatch;

    if (*ReadWriteMode & 1)
    {

        *ReadWriteMode &= ~1;
        return LOBYTE(*CurrentValue);
    }

    if (*ReadWriteMode & 2)
    {

        *ReadWriteMode &= ~2;
        return HIBYTE(*CurrentValue);
    }


    ASSERT(FALSE);
    return 0;
}
