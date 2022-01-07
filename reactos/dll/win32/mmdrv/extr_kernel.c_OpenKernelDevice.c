
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef scalar_t__ MMRESULT ;
typedef scalar_t__ HANDLE ;
typedef int DeviceType ;
typedef int DWORD ;


 int ASSERT (scalar_t__*) ;
 scalar_t__ CobbleDeviceName (int ,int ,int *) ;
 scalar_t__ CreateFile (int *,int ,int ,int *,int ,int ,int *) ;
 int DPRINT (char*,int *) ;
 scalar_t__ ErrorToMmResult (int ) ;
 int FILE_FLAG_OVERLAPPED ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_DEVICE_NAME_LENGTH ;
 scalar_t__ MMSYSERR_NOERROR ;
 int OPEN_EXISTING ;

MMRESULT
OpenKernelDevice(
    DeviceType device_type,
    UINT device_id,
    DWORD access,
    HANDLE* handle)
{
    MMRESULT result;
    WCHAR device_name[MAX_DEVICE_NAME_LENGTH];
    DWORD open_flags = 0;

    ASSERT(handle);



    result = CobbleDeviceName(device_type, device_id, device_name);

    DPRINT("Opening kernel device %ls\n", device_name);

    if ( result != MMSYSERR_NOERROR )
        return result;



    if ( access != GENERIC_READ )
        open_flags = FILE_FLAG_OVERLAPPED;



    *handle = CreateFile(device_name,
                         access,
                         FILE_SHARE_WRITE,
                         ((void*)0),
                         OPEN_EXISTING,
                         open_flags,
                         ((void*)0));

    if ( *handle == INVALID_HANDLE_VALUE )
        return ErrorToMmResult(GetLastError());

    return MMSYSERR_NOERROR;
}
