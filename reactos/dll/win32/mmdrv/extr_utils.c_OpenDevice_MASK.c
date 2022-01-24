#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/ ***** PHANDLE ;
typedef  int /*<<< orphan*/  MMRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ AUX_DEVICE_NAME_U ; 
#define  AuxDevice 132 
 int /*<<< orphan*/ **** FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FILE_FLAG_OVERLAPPED ; 
 int /*<<< orphan*/  FILE_SHARE_WRITE ; 
 scalar_t__ GENERIC_READ ; 
 int /*<<< orphan*/ ***** INVALID_HANDLE_VALUE ; 
 scalar_t__ MIDI_IN_DEVICE_NAME_U ; 
 scalar_t__ MIDI_OUT_DEVICE_NAME_U ; 
 int /*<<< orphan*/  MMSYSERR_BADDEVICEID ; 
 int /*<<< orphan*/  MMSYSERR_NOERROR ; 
#define  MidiInDevice 131 
#define  MidiOutDevice 130 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ SOUND_MAX_DEVICES ; 
 int SOUND_MAX_DEVICE_NAME ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ WAVE_IN_DEVICE_NAME_U ; 
 scalar_t__ WAVE_OUT_DEVICE_NAME_U ; 
#define  WaveInDevice 129 
#define  WaveOutDevice 128 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 

MMRESULT FUNC5(UINT DeviceType, DWORD ID, PHANDLE pDeviceHandle,
                    DWORD Access)
{
    FUNC1("OpenDevice()\n");
    WCHAR DeviceName[SOUND_MAX_DEVICE_NAME];
    *pDeviceHandle = *INVALID_HANDLE_VALUE;

    if (ID > SOUND_MAX_DEVICES)
        return MMSYSERR_BADDEVICEID;

    switch(DeviceType)
    {
        case WaveOutDevice :
            FUNC4(DeviceName, L"\\\\.%ls%d", WAVE_OUT_DEVICE_NAME_U + FUNC3("\\Device"), ID);
            break;
        case WaveInDevice :
            FUNC4(DeviceName, L"\\\\.%ls%d", WAVE_IN_DEVICE_NAME_U + FUNC3("\\Device"), ID);
            break;
        case MidiOutDevice :
            FUNC4(DeviceName, L"\\\\.%ls%d", MIDI_OUT_DEVICE_NAME_U + FUNC3("\\Device"), ID);
            break;
        case MidiInDevice :
            FUNC4(DeviceName, L"\\\\.%ls%d", MIDI_IN_DEVICE_NAME_U + FUNC3("\\Device"), ID);
            break;
		case AuxDevice :
			 FUNC4(DeviceName, L"\\\\.%ls%d", AUX_DEVICE_NAME_U + FUNC3("\\Device"), ID);
			 break;
        default : 
            FUNC1("No Auido Device Found");
            return MMSYSERR_BADDEVICEID; /* Maybe we should change error code */
    };

    FUNC1("Attempting to open %S\n", DeviceName);

    *pDeviceHandle = FUNC0(DeviceName, Access, FILE_SHARE_WRITE, NULL,
                                OPEN_EXISTING, Access != GENERIC_READ ? FILE_FLAG_OVERLAPPED : 0,
                                NULL);

    FUNC1("DeviceHandle == 0x%x\n", (int)*pDeviceHandle);

    if (pDeviceHandle == INVALID_HANDLE_VALUE)
        return FUNC2();

    return MMSYSERR_NOERROR;
}