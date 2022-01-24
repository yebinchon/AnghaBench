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
typedef  scalar_t__ SHORT ;
typedef  scalar_t__ MMRESULT ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AuxDevice ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  DeviceList ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  MidiInDevice ; 
 int /*<<< orphan*/  MidiOutDevice ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SOUND_MAX_DEVICE_NAME ; 
 int /*<<< orphan*/  WaveInDevice ; 
 int /*<<< orphan*/  WaveOutDevice ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

MMRESULT FUNC5()
{
//    DWORD Index;
//    HKEY DriverKey;

    FUNC2("Finding devices\n");
    
//    DriverKey = OpenParametersKey();
//  see drvutil.c of MS DDK for how this SHOULD be done...

  
    SHORT i;
    HANDLE h;
    WCHAR DeviceName[SOUND_MAX_DEVICE_NAME]; 

    for (i=0; FUNC3(WaveOutDevice, i, &h, GENERIC_READ) == MMSYSERR_NOERROR; i++) 
    { 
        FUNC4(DeviceName, L"WaveOut%d\0", i);
        FUNC1(h);
        FUNC0(&DeviceList, WaveOutDevice, 0, DeviceName);
    }

    for (i=0; FUNC3(WaveInDevice, i, &h, GENERIC_READ) == MMSYSERR_NOERROR; i++) 
    { 
        FUNC4(DeviceName, L"WaveIn%d\0", i);
        FUNC1(h);
        FUNC0(&DeviceList, WaveInDevice, 0, DeviceName);
    }

    for (i=0; FUNC3(MidiOutDevice, i, &h, GENERIC_READ) == MMSYSERR_NOERROR; i++) 
    { 
        FUNC4(DeviceName, L"MidiOut%d\0", i);
        FUNC1(h);
        FUNC0(&DeviceList, MidiOutDevice, 0, DeviceName);
    }

    for (i=0; FUNC3(MidiInDevice, i, &h, GENERIC_READ) == MMSYSERR_NOERROR; i++) 
    { 
        FUNC4(DeviceName, L"MidiIn%d\0", i);
        FUNC1(h);
        FUNC0(&DeviceList, MidiInDevice, 0, DeviceName);
    }

    for (i=0; FUNC3(AuxDevice, i, &h, GENERIC_READ) == MMSYSERR_NOERROR; i++) 
    { 
        FUNC4(DeviceName, L"Aux%d\0", i);
        FUNC1(h);
        FUNC0(&DeviceList, AuxDevice, 0, DeviceName);
    }


    // MIDI Out 0: MPU-401 UART
    // AddDeviceToList(&DeviceList, MidiOutDevice, 0, L"MidiOut0");
    // Wave Out 0: Sound Blaster 16 (ok?)
    // AddDeviceToList(&DeviceList, WaveOutDevice, 0, L"WaveOut0");

    return MMSYSERR_NOERROR; // ok?
}