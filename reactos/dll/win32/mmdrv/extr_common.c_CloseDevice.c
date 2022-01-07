
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kernel_device_handle; } ;
typedef TYPE_1__ SessionInfo ;
typedef scalar_t__ MMRESULT ;
typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ DWORD ;


 int ASSERT (TYPE_1__*) ;
 scalar_t__ CallSessionThread (TYPE_1__*,int ,int ) ;
 int CloseKernelDevice (int ) ;
 int DestroySession (TYPE_1__*) ;
 scalar_t__ MMSYSERR_NOERROR ;
 int WODM_CLOSE ;

DWORD
CloseDevice(
    DWORD_PTR private_handle)
{
    MMRESULT result;
    SessionInfo* session_info = (SessionInfo*) private_handle;


    ASSERT(session_info);

    result = CallSessionThread(session_info, WODM_CLOSE, 0);

    if ( result == MMSYSERR_NOERROR )
    {


        CloseKernelDevice(session_info->kernel_device_handle);

        DestroySession(session_info);
    }

    return result;
}
