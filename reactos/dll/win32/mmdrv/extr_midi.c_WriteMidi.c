
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int DeviceHandle; } ;
typedef int PVOID ;
typedef TYPE_1__* PMIDIALLOC ;
typedef scalar_t__ PBYTE ;
typedef int DWORD ;


 int DPRINT (char*,int ,int ) ;
 int DeviceIoControl (int ,int ,int ,int ,int *,int ,int *,int *) ;
 int IOCTL_MIDI_PLAY ;
 int MMSYSERR_NOERROR ;
 int TranslateStatus () ;

__attribute__((used)) static DWORD WriteMidi(PBYTE pData, ULONG Length, PMIDIALLOC pClient)
{
    DWORD BytesReturned;

    DPRINT("IOCTL_MIDI_PLAY == %d [%x]\n", IOCTL_MIDI_PLAY, IOCTL_MIDI_PLAY);

    if ( !DeviceIoControl(pClient->DeviceHandle, IOCTL_MIDI_PLAY, (PVOID)pData,
                          Length, ((void*)0), 0, &BytesReturned, ((void*)0)))
        return TranslateStatus();

    return MMSYSERR_NOERROR;
}
