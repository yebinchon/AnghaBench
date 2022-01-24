#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  CommitWaveBuffer; int /*<<< orphan*/  Close; int /*<<< orphan*/  Open; int /*<<< orphan*/  SetWaveFormat; int /*<<< orphan*/  QueryWaveFormatSupport; int /*<<< orphan*/  GetCapabilities; } ;
typedef  scalar_t__ PWSTR ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ * PSOUND_DEVICE ;
typedef  int /*<<< orphan*/  MMRESULT ;
typedef  TYPE_1__ MMFUNCTION_TABLE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CloseNt4SoundDevice ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GetSoundBlasterDeviceCapabilities ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OpenNt4SoundDevice ; 
 int /*<<< orphan*/  QueryNt4WaveDeviceFormatSupport ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  SetNt4WaveDeviceFormat ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WriteFileEx_Committer ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

BOOLEAN FUNC8(
    UCHAR DeviceType,
    PWSTR DevicePath)
{
    MMRESULT Result;
    PSOUND_DEVICE SoundDevice = NULL;
    MMFUNCTION_TABLE FuncTable;
    PWSTR PathCopy;

    FUNC4(L"(Callback) Found device: %wS\n", DevicePath);

    PathCopy = FUNC0(FUNC7(DevicePath));

    if ( ! PathCopy )
        return FALSE;

    FUNC1(PathCopy, DevicePath);

    Result = FUNC2(DeviceType, (PVOID) PathCopy, &SoundDevice);

    if ( ! FUNC3(Result) )
        return FALSE;

    /* Set up our function table */
    FUNC6(&FuncTable, sizeof(MMFUNCTION_TABLE));
    FuncTable.GetCapabilities = GetSoundBlasterDeviceCapabilities;
    FuncTable.QueryWaveFormatSupport = QueryNt4WaveDeviceFormatSupport;
    FuncTable.SetWaveFormat = SetNt4WaveDeviceFormat;
    FuncTable.Open = OpenNt4SoundDevice;
    FuncTable.Close = CloseNt4SoundDevice;
    FuncTable.CommitWaveBuffer = WriteFileEx_Committer;
    //FuncTable.SubmitWaveHeaderToDevice = SubmitWaveHeaderToDevice;

    FUNC5(SoundDevice, &FuncTable);

    return TRUE;
}