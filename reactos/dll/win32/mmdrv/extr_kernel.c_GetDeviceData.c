
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int overlap ;
struct TYPE_5__ {int hEvent; } ;
typedef int PBYTE ;
typedef TYPE_1__ OVERLAPPED ;
typedef int MMRESULT ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int CreateEvent (int *,int ,int ,int *) ;
 int DPRINT (char*) ;
 int DeviceIoControl (int ,int ,int *,int ,int ,int ,int *,TYPE_1__*) ;
 scalar_t__ ERROR_IO_PENDING ;
 int ErrorToMmResult (scalar_t__) ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int GetOverlappedResult (int ,TYPE_1__*,int *,scalar_t__) ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOMEM ;
 int SetEvent (int ) ;
 scalar_t__ TRUE ;
 scalar_t__ WAIT_IO_COMPLETION ;
 scalar_t__ WaitForSingleObjectEx (int ,int ,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

MMRESULT
GetDeviceData(
    HANDLE device_handle,
    DWORD ioctl,
    PBYTE output_buffer,
    DWORD buffer_size)
{
    OVERLAPPED overlap;
    DWORD bytes_returned;
    BOOL success;
    DWORD transfer;

    DPRINT("GetDeviceData\n");

    memset(&overlap, 0, sizeof(overlap));

    overlap.hEvent = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));

    if ( ! overlap.hEvent )
        return MMSYSERR_NOMEM;

    success = DeviceIoControl(device_handle,
                              ioctl,
                              ((void*)0),
                              0,
                              output_buffer,
                              buffer_size,
                              &bytes_returned,
                              &overlap);

    if ( ! success )
    {
        if ( GetLastError() == ERROR_IO_PENDING )
        {
            if ( ! GetOverlappedResult(device_handle, &overlap, &transfer, TRUE) )
            {
                CloseHandle(overlap.hEvent);
                return ErrorToMmResult(GetLastError());
            }
        }
        else
        {
            CloseHandle(overlap.hEvent);
            return ErrorToMmResult(GetLastError());
        }
    }

    while ( TRUE )
    {
        SetEvent(overlap.hEvent);

        if ( WaitForSingleObjectEx(overlap.hEvent, 0, TRUE) != WAIT_IO_COMPLETION )
        {
            break;
        }
    }

    CloseHandle(overlap.hEvent);

    return MMSYSERR_NOERROR;
}
