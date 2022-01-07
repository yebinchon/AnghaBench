
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {int dwFlags; struct TYPE_7__* lpNext; } ;
struct TYPE_6__ {scalar_t__ device_type; TYPE_2__* wave_queue; } ;
typedef TYPE_1__ SessionInfo ;
typedef TYPE_2__* PWAVEHDR ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int DPRINT (char*,TYPE_2__*) ;
 int NotifyClient (TYPE_1__*,int ,int ,int ) ;
 int WHDR_DONE ;
 int WHDR_INQUEUE ;
 int WIM_DATA ;
 int WOM_DONE ;
 scalar_t__ WaveOutDevice ;

VOID
ReturnCompletedBuffers(SessionInfo* session_info)
{
    PWAVEHDR header = ((void*)0);


    while ( ( header = session_info->wave_queue ) )
    {
        if ( header->dwFlags & WHDR_DONE )
        {
            DWORD message;


            header->dwFlags &= ~WHDR_INQUEUE;
            header->dwFlags |= WHDR_DONE;


            session_info->wave_queue = header->lpNext;


            message = (session_info->device_type == WaveOutDevice) ? WOM_DONE :
                                                                     WIM_DATA;

            DPRINT("Notifying client that buffer 0x%p is done\n", header);


            NotifyClient(session_info, message, (DWORD_PTR) header, 0);
        }
    }


}
