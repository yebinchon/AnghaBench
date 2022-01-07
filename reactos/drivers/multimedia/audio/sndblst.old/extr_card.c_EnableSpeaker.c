
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef scalar_t__ BOOLEAN ;


 int DPRINT (char*,scalar_t__) ;
 int SB_DISABLE_SPEAKER ;
 int SB_ENABLE_SPEAKER ;
 int SB_WRITE_BYTE (int ,int ) ;

VOID EnableSpeaker(ULONG BasePort, BOOLEAN SpeakerOn)
{
    DPRINT("Setting speaker status %d\n", SpeakerOn);




    SB_WRITE_BYTE(BasePort, SpeakerOn ? SB_ENABLE_SPEAKER : SB_DISABLE_SPEAKER);
}
