
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int ***** PHANDLE ;
typedef int MMRESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ AUX_DEVICE_NAME_U ;

 int **** CreateFile (int *,scalar_t__,int ,int *,int ,int ,int *) ;
 int DPRINT (char*,...) ;
 int FILE_FLAG_OVERLAPPED ;
 int FILE_SHARE_WRITE ;
 scalar_t__ GENERIC_READ ;
 int ***** INVALID_HANDLE_VALUE ;
 scalar_t__ MIDI_IN_DEVICE_NAME_U ;
 scalar_t__ MIDI_OUT_DEVICE_NAME_U ;
 int MMSYSERR_BADDEVICEID ;
 int MMSYSERR_NOERROR ;


 int OPEN_EXISTING ;
 scalar_t__ SOUND_MAX_DEVICES ;
 int SOUND_MAX_DEVICE_NAME ;
 int TranslateStatus () ;
 scalar_t__ WAVE_IN_DEVICE_NAME_U ;
 scalar_t__ WAVE_OUT_DEVICE_NAME_U ;


 scalar_t__ strlen (char*) ;
 int wsprintf (int *,char*,scalar_t__,scalar_t__) ;

MMRESULT OpenDevice(UINT DeviceType, DWORD ID, PHANDLE pDeviceHandle,
                    DWORD Access)
{
    DPRINT("OpenDevice()\n");
    WCHAR DeviceName[SOUND_MAX_DEVICE_NAME];
    *pDeviceHandle = INVALID_HANDLE_VALUE;

    if (ID > SOUND_MAX_DEVICES)
        return MMSYSERR_BADDEVICEID;

    switch(DeviceType)
    {
        case 128 :
            wsprintf(DeviceName, L"\\\\.%ls%d", WAVE_OUT_DEVICE_NAME_U + strlen("\\Device"), ID);
            break;
        case 129 :
            wsprintf(DeviceName, L"\\\\.%ls%d", WAVE_IN_DEVICE_NAME_U + strlen("\\Device"), ID);
            break;
        case 130 :
            wsprintf(DeviceName, L"\\\\.%ls%d", MIDI_OUT_DEVICE_NAME_U + strlen("\\Device"), ID);
            break;
        case 131 :
            wsprintf(DeviceName, L"\\\\.%ls%d", MIDI_IN_DEVICE_NAME_U + strlen("\\Device"), ID);
            break;
  case 132 :
    wsprintf(DeviceName, L"\\\\.%ls%d", AUX_DEVICE_NAME_U + strlen("\\Device"), ID);
    break;
        default :
            DPRINT("No Auido Device Found");
            return MMSYSERR_BADDEVICEID;
    };

    DPRINT("Attempting to open %S\n", DeviceName);

    *pDeviceHandle = CreateFile(DeviceName, Access, FILE_SHARE_WRITE, ((void*)0),
                                OPEN_EXISTING, Access != GENERIC_READ ? FILE_FLAG_OVERLAPPED : 0,
                                ((void*)0));

    DPRINT("DeviceHandle == 0x%x\n", (int)*pDeviceHandle);

    if (pDeviceHandle == INVALID_HANDLE_VALUE)
        return TranslateStatus();

    return MMSYSERR_NOERROR;
}
