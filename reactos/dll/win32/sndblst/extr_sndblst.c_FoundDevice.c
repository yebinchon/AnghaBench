
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_4__ {int CommitWaveBuffer; int Close; int Open; int SetWaveFormat; int QueryWaveFormatSupport; int GetCapabilities; } ;
typedef scalar_t__ PWSTR ;
typedef int PVOID ;
typedef int * PSOUND_DEVICE ;
typedef int MMRESULT ;
typedef TYPE_1__ MMFUNCTION_TABLE ;
typedef int BOOLEAN ;


 scalar_t__ AllocateWideString (int ) ;
 int CloseNt4SoundDevice ;
 int CopyWideString (scalar_t__,scalar_t__) ;
 int FALSE ;
 int GetSoundBlasterDeviceCapabilities ;
 int ListSoundDevice (int ,int ,int **) ;
 int MMSUCCESS (int ) ;
 int OpenNt4SoundDevice ;
 int QueryNt4WaveDeviceFormatSupport ;
 int SND_TRACE (char*,scalar_t__) ;
 int SetNt4WaveDeviceFormat ;
 int SetSoundDeviceFunctionTable (int *,TYPE_1__*) ;
 int TRUE ;
 int WriteFileEx_Committer ;
 int ZeroMemory (TYPE_1__*,int) ;
 int wcslen (scalar_t__) ;

BOOLEAN FoundDevice(
    UCHAR DeviceType,
    PWSTR DevicePath)
{
    MMRESULT Result;
    PSOUND_DEVICE SoundDevice = ((void*)0);
    MMFUNCTION_TABLE FuncTable;
    PWSTR PathCopy;

    SND_TRACE(L"(Callback) Found device: %wS\n", DevicePath);

    PathCopy = AllocateWideString(wcslen(DevicePath));

    if ( ! PathCopy )
        return FALSE;

    CopyWideString(PathCopy, DevicePath);

    Result = ListSoundDevice(DeviceType, (PVOID) PathCopy, &SoundDevice);

    if ( ! MMSUCCESS(Result) )
        return FALSE;


    ZeroMemory(&FuncTable, sizeof(MMFUNCTION_TABLE));
    FuncTable.GetCapabilities = GetSoundBlasterDeviceCapabilities;
    FuncTable.QueryWaveFormatSupport = QueryNt4WaveDeviceFormatSupport;
    FuncTable.SetWaveFormat = SetNt4WaveDeviceFormat;
    FuncTable.Open = OpenNt4SoundDevice;
    FuncTable.Close = CloseNt4SoundDevice;
    FuncTable.CommitWaveBuffer = WriteFileEx_Committer;


    SetSoundDeviceFunctionTable(SoundDevice, &FuncTable);

    return TRUE;
}
