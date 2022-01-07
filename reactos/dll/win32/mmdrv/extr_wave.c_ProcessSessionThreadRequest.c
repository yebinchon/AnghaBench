
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int function; int parameter; } ;
struct TYPE_6__ {int * wave_queue; TYPE_1__ thread; int kernel_device_handle; } ;
typedef TYPE_2__ SessionInfo ;
typedef int PBYTE ;
typedef int MMRESULT ;
typedef int LPWAVEHDR ;
typedef int DWORD ;


 int DPRINT (char*) ;

 int GetDeviceData (int ,int ,int ,...) ;
 int IOCTL_WAVE_GET_PITCH ;
 int IOCTL_WAVE_GET_PLAYBACK_RATE ;
 int IOCTL_WAVE_GET_VOLUME ;
 int IOCTL_WAVE_SET_PITCH ;
 int IOCTL_WAVE_SET_PLAYBACK_RATE ;
 int MMSYSERR_ERROR ;
 int MMSYSERR_NOERROR ;
 int QueueWaveBuffer (TYPE_2__*,int ) ;
 int SetDeviceData (int ,int ,int ,int) ;
 int WAVERR_STILLPLAYING ;
DWORD
ProcessSessionThreadRequest(SessionInfo* session_info)
{
    MMRESULT result = MMSYSERR_NOERROR;

    switch ( session_info->thread.function )
    {
        case 128 :
        {
            result = QueueWaveBuffer(session_info,
                                     (LPWAVEHDR) session_info->thread.parameter);
            break;
        }

        case 133 :
        {

            break;
        }

        case 134 :
        {

            break;
        }

        case 132 :
        {

            break;
        }

        case 136 :
        {

            break;
        }

        case 131 :
        {
            result = SetDeviceData(session_info->kernel_device_handle,
                                   IOCTL_WAVE_SET_PITCH,
                                   (PBYTE) session_info->thread.parameter,
                                   sizeof(DWORD));
            break;
        }

        case 138 :
        {
            result = GetDeviceData(session_info->kernel_device_handle,
                                   IOCTL_WAVE_GET_PITCH,
                                   (PBYTE) session_info->thread.parameter,
                                   sizeof(DWORD));
            break;
        }

        case 129 :
        {
            break;
        }

        case 135 :
        {





            break;
        }

        case 130 :
        {
            result = SetDeviceData(session_info->kernel_device_handle,
                                   IOCTL_WAVE_SET_PLAYBACK_RATE,
                                   (PBYTE) session_info->thread.parameter,
                                   sizeof(DWORD));
            break;
        }

        case 137 :
        {
            result = GetDeviceData(session_info->kernel_device_handle,
                                   IOCTL_WAVE_GET_PLAYBACK_RATE,
                                   (PBYTE) session_info->thread.parameter,
                                   sizeof(DWORD));
            break;
        }

        case 139 :
        {
            DPRINT("Thread was asked if OK to close device\n");

            if ( session_info->wave_queue != ((void*)0) )
                result = WAVERR_STILLPLAYING;
            else
                result = MMSYSERR_NOERROR;

            break;
        }

        case 140 :
        {
            DPRINT("Terminating thread...\n");
            result = MMSYSERR_NOERROR;
            break;
        }

        default :
        {
            DPRINT("INVALID FUNCTION\n");
            result = MMSYSERR_ERROR;
            break;
        }
    }



    return result;
}
