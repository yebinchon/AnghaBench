
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SessionInfo ;
typedef int PWAVEHDR ;
typedef scalar_t__ DWORD_PTR ;
typedef int DWORD ;


 int ASSERT (int *) ;
 int CallSessionThread (int *,int ,int ) ;
 int WODM_WRITE ;

DWORD
WriteWaveBuffer(
    DWORD_PTR private_handle,
    PWAVEHDR wave_header,
    DWORD wave_header_size)
{
    SessionInfo* session_info = (SessionInfo*) private_handle;
    ASSERT(session_info);


    return CallSessionThread(session_info, WODM_WRITE, wave_header);
}
