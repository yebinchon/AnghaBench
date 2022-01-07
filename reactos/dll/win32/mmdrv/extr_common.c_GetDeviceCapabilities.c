
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ MMRESULT ;
typedef int LPVOID ;
typedef int HANDLE ;
typedef int DeviceType ;
typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int ASSERT (scalar_t__) ;
 int CloseKernelDevice (int ) ;
 int DPRINT (char*) ;
 scalar_t__ DeviceIoControl (int ,scalar_t__,int *,int ,int ,scalar_t__,scalar_t__*,int *) ;
 scalar_t__ ErrorToMmResult (int ) ;
 int GENERIC_READ ;
 int GetLastError () ;
 scalar_t__ IOCTL_MIDI_GET_CAPABILITIES ;
 scalar_t__ IOCTL_WAVE_GET_CAPABILITIES ;
 scalar_t__ IsAuxDevice (int ) ;
 scalar_t__ IsMidiDevice (int ) ;
 scalar_t__ IsWaveDevice (int ) ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ MMSYSERR_NOTSUPPORTED ;
 scalar_t__ OpenKernelDevice (int ,int ,int ,int *) ;

DWORD
GetDeviceCapabilities(
    DeviceType device_type,
    UINT device_id,
    DWORD_PTR capabilities,
    DWORD capabilities_size)
{
    MMRESULT result;
    DWORD ioctl;
    HANDLE handle;
    DWORD bytes_returned;
    BOOL device_io_result;

    ASSERT(capabilities);



    if ( IsWaveDevice(device_type) )
        ioctl = IOCTL_WAVE_GET_CAPABILITIES;
    else if ( IsMidiDevice(device_type) )
        ioctl = IOCTL_MIDI_GET_CAPABILITIES;
    else if ( IsAuxDevice(device_type) )
        return MMSYSERR_NOTSUPPORTED;
    else
        return MMSYSERR_NOTSUPPORTED;

    result = OpenKernelDevice(device_type,
                              device_id,
                              GENERIC_READ,
                              &handle);

    if ( result != MMSYSERR_NOERROR )
    {
        DPRINT("Failed to open kernel device\n");
        return result;
    }

    device_io_result = DeviceIoControl(handle,
                                       ioctl,
                                       ((void*)0),
                                       0,
                                       (LPVOID) capabilities,
                                       capabilities_size,
                                       &bytes_returned,
                                       ((void*)0));



    if ( device_io_result )
        result = MMSYSERR_NOERROR;
    else
        result = ErrorToMmResult(GetLastError());



    CloseKernelDevice(handle);

    return result;
}
