
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int BOOLEAN ;


 int DPRINT (char*) ;
 int FALSE ;
 int SB_GET_SPEAKER_STATUS ;
 int SB_READ_DATA (int ) ;
 int SB_WRITE_BYTE (int ,int ) ;
 int WaitToReceive (int ) ;

BOOLEAN IsSpeakerEnabled(ULONG BasePort)
{
    DPRINT("Obtaining speaker status\n");




    SB_WRITE_BYTE(BasePort, SB_GET_SPEAKER_STATUS);
    if (! WaitToReceive(BasePort))
        return FALSE;

    return SB_READ_DATA(BasePort) == 0xff;
}
