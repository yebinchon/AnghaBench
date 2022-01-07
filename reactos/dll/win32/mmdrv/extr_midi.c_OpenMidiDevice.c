
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int hMidi; int dwInstance; int dwCallback; } ;
struct TYPE_8__ {TYPE_1__* Bufs; } ;
struct TYPE_7__ {int DeviceType; int * AuxEvent2; int * AuxEvent1; void* Event; int DeviceHandle; scalar_t__ dwFlags; int hMidi; int dwInstance; int dwCallback; TYPE_3__* Mid; } ;
struct TYPE_6__ {TYPE_2__* pClient; } ;
typedef TYPE_2__* PMIDIALLOC ;
typedef TYPE_3__* PLOCALMIDIDATA ;
typedef scalar_t__ MMRESULT ;
typedef int MIDIALLOC ;
typedef TYPE_4__* LPMIDIOPENDESC ;
typedef int LOCALMIDIDATA ;
typedef scalar_t__ DWORD ;


 void* CreateEvent (int *,int ,int ,int *) ;
 int DPRINT (char*) ;
 int FALSE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int Heap ;
 int HeapAlloc (int ,int ,int) ;
 int INFINITE ;
 int LOCAL_MIDI_BUFFERS ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ MMSYSERR_NOMEM ;


 scalar_t__ OpenDevice (int,scalar_t__,int *,int) ;
 int WaitForSingleObject (int *,int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static DWORD OpenMidiDevice(UINT DeviceType, DWORD ID, DWORD User, DWORD Param1, DWORD Param2)
{
    PMIDIALLOC pClient = ((void*)0);
    MMRESULT Result = MMSYSERR_NOERROR;


    DPRINT("OpenMidiDevice()\n");

    switch(DeviceType)
    {
        case 128 :
            pClient = (PMIDIALLOC) HeapAlloc(Heap, 0, sizeof(MIDIALLOC));
            if ( pClient ) memset(pClient, 0, sizeof(MIDIALLOC));
            break;

        case 129 :
            pClient = (PMIDIALLOC) HeapAlloc(Heap, 0, sizeof(MIDIALLOC) + sizeof(LOCALMIDIDATA));
   if ( pClient ) memset(pClient, 0, sizeof(MIDIALLOC) + sizeof(LOCALMIDIDATA));
            break;
    };

    if ( !pClient )
        return MMSYSERR_NOMEM;

 if (DeviceType == 129)
 {
        int i;
        pClient->Mid = (PLOCALMIDIDATA)(pClient + 1);
        for (i = 0 ;i < LOCAL_MIDI_BUFFERS ; i++)
  {
            pClient->Mid->Bufs[i].pClient = pClient;
        }
    }

    pClient->DeviceType = DeviceType;
    pClient->dwCallback = ((LPMIDIOPENDESC)Param1)->dwCallback;
    pClient->dwInstance = ((LPMIDIOPENDESC)Param1)->dwInstance;
    pClient->hMidi = ((LPMIDIOPENDESC)Param1)->hMidi;
    pClient->dwFlags = Param2;

    Result = OpenDevice(DeviceType, ID, &pClient->DeviceHandle, (GENERIC_READ | GENERIC_WRITE));

    if ( Result != MMSYSERR_NOERROR )
    {

        return Result;
    }

    pClient->Event = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));

    if ( !pClient->Event )
    {

        return MMSYSERR_NOMEM;
    }

 if (DeviceType == 129)
 {

        pClient->AuxEvent1 = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));
        if (pClient->AuxEvent1 == ((void*)0))
  {

            return MMSYSERR_NOMEM;
        }

  pClient->AuxEvent2 = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));
        if (pClient->AuxEvent2 == ((void*)0))
  {

            return MMSYSERR_NOMEM;
        }





       WaitForSingleObject(pClient->AuxEvent2, INFINITE);
    }

    PMIDIALLOC *pUserHandle;
    pUserHandle = (PMIDIALLOC*) User;
    *pUserHandle = pClient;



    return MMSYSERR_NOERROR;
}
