
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ SHORT ;
typedef scalar_t__ MMRESULT ;
typedef int HANDLE ;


 int AddDeviceToList (int *,int ,int ,int *) ;
 int AuxDevice ;
 int CloseHandle (int ) ;
 int DPRINT (char*) ;
 int DeviceList ;
 int GENERIC_READ ;
 scalar_t__ MMSYSERR_NOERROR ;
 int MidiInDevice ;
 int MidiOutDevice ;
 scalar_t__ OpenDevice (int ,scalar_t__,int *,int ) ;
 int SOUND_MAX_DEVICE_NAME ;
 int WaveInDevice ;
 int WaveOutDevice ;
 int wsprintf (int *,char*,scalar_t__) ;

MMRESULT FindDevices()
{



    DPRINT("Finding devices\n");





    SHORT i;
    HANDLE h;
    WCHAR DeviceName[SOUND_MAX_DEVICE_NAME];

    for (i=0; OpenDevice(WaveOutDevice, i, &h, GENERIC_READ) == MMSYSERR_NOERROR; i++)
    {
        wsprintf(DeviceName, L"WaveOut%d\0", i);
        CloseHandle(h);
        AddDeviceToList(&DeviceList, WaveOutDevice, 0, DeviceName);
    }

    for (i=0; OpenDevice(WaveInDevice, i, &h, GENERIC_READ) == MMSYSERR_NOERROR; i++)
    {
        wsprintf(DeviceName, L"WaveIn%d\0", i);
        CloseHandle(h);
        AddDeviceToList(&DeviceList, WaveInDevice, 0, DeviceName);
    }

    for (i=0; OpenDevice(MidiOutDevice, i, &h, GENERIC_READ) == MMSYSERR_NOERROR; i++)
    {
        wsprintf(DeviceName, L"MidiOut%d\0", i);
        CloseHandle(h);
        AddDeviceToList(&DeviceList, MidiOutDevice, 0, DeviceName);
    }

    for (i=0; OpenDevice(MidiInDevice, i, &h, GENERIC_READ) == MMSYSERR_NOERROR; i++)
    {
        wsprintf(DeviceName, L"MidiIn%d\0", i);
        CloseHandle(h);
        AddDeviceToList(&DeviceList, MidiInDevice, 0, DeviceName);
    }

    for (i=0; OpenDevice(AuxDevice, i, &h, GENERIC_READ) == MMSYSERR_NOERROR; i++)
    {
        wsprintf(DeviceName, L"Aux%d\0", i);
        CloseHandle(h);
        AddDeviceToList(&DeviceList, AuxDevice, 0, DeviceName);
    }







    return MMSYSERR_NOERROR;
}
