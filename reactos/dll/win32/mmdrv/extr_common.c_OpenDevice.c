
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int dwInstance; int hWave; int dwCallback; } ;
struct TYPE_7__ {int app_user_data; int mme_wave_handle; int callback; scalar_t__ flags; int kernel_device_handle; } ;
typedef TYPE_1__ SessionInfo ;
typedef int PVOID ;
typedef scalar_t__ MMRESULT ;
typedef TYPE_2__* LPWAVEOPENDESC ;
typedef scalar_t__ DeviceType ;
typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ CreateSession (scalar_t__,int ,TYPE_1__**) ;
 int DPRINT (char*) ;
 int DestroySession (TYPE_1__*) ;
 int GENERIC_READ ;
 scalar_t__ IsWaveDevice (scalar_t__) ;
 int MIM_OPEN ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ MMSYSERR_NOTSUPPORTED ;
 int MOM_OPEN ;
 scalar_t__ MidiInDevice ;
 scalar_t__ MidiOutDevice ;
 int NotifyClient (TYPE_1__*,scalar_t__,int ,int ) ;
 scalar_t__ OpenKernelDevice (scalar_t__,int ,int ,int *) ;
 scalar_t__ StartSessionThread (TYPE_1__*) ;
 int WIM_OPEN ;
 int WOM_OPEN ;
 scalar_t__ WaveInDevice ;
 scalar_t__ WaveOutDevice ;

DWORD
OpenDevice(
    DeviceType device_type,
    UINT device_id,
    PVOID open_descriptor,
    DWORD flags,
    DWORD_PTR private_handle)
{
    SessionInfo* session_info;
    MMRESULT result;
    DWORD message;


    result = CreateSession(device_type, device_id, &session_info);

    if ( result != MMSYSERR_NOERROR )
    {
        DPRINT("Couldn't allocate session info\n");
        return result;
    }

    result = OpenKernelDevice(device_type,
                              device_id,
                              GENERIC_READ,
                              &session_info->kernel_device_handle);

    if ( result != MMSYSERR_NOERROR )
    {
        DPRINT("Failed to open kernel device\n");
        DestroySession(session_info);
        return result;
    }



    session_info->flags = flags;



    if ( IsWaveDevice(device_type) )
    {
        LPWAVEOPENDESC wave_open_desc = (LPWAVEOPENDESC) open_descriptor;
        session_info->callback = wave_open_desc->dwCallback;
        session_info->mme_wave_handle = wave_open_desc->hWave;
        session_info->app_user_data = wave_open_desc->dwInstance;
    }
    else
    {
        DPRINT("Only wave devices are supported at present!\n");
        DestroySession(session_info);
        return MMSYSERR_NOTSUPPORTED;
    }



    result = StartSessionThread(session_info);

    if ( result != MMSYSERR_NOERROR )
    {
        DestroySession(session_info);
        return result;
    }



    *((SessionInfo**)private_handle) = session_info;



    message = (device_type == WaveOutDevice) ? WOM_OPEN :
              (device_type == WaveInDevice) ? WIM_OPEN :
              (device_type == MidiOutDevice) ? MOM_OPEN :
              (device_type == MidiInDevice) ? MIM_OPEN : 0xFFFFFFFF;

    NotifyClient(session_info, message, 0, 0);

    return MMSYSERR_NOERROR;
}
