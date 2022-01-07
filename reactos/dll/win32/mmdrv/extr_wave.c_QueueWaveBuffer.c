
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dwFlags; struct TYPE_7__* lpNext; scalar_t__ reserved; scalar_t__ dwBytesRecorded; int lpData; } ;
struct TYPE_6__ {TYPE_2__* next_buffer; scalar_t__ buffer_position; TYPE_2__* wave_queue; } ;
typedef TYPE_1__ SessionInfo ;
typedef TYPE_2__* PWAVEHDR ;
typedef int MMRESULT ;
typedef TYPE_2__* LPWAVEHDR ;
typedef scalar_t__ DWORD_PTR ;


 int DPRINT (char*) ;
 int MMSYSERR_INVALPARAM ;
 int MMSYSERR_NOERROR ;
 int WAVERR_STILLPLAYING ;
 int WAVERR_UNPREPARED ;
 int WHDR_DONE ;
 int WHDR_INQUEUE ;
 int WHDR_PREPARED ;

MMRESULT
QueueWaveBuffer(
    SessionInfo* session_info,
    LPWAVEHDR wave_header)
{
    PWAVEHDR queue_node, previous_node;
    DPRINT("Queueing wave buffer\n");

    if ( ! wave_header )
    {
        return MMSYSERR_INVALPARAM;
    }

    if ( ! wave_header->lpData )
    {
        return MMSYSERR_INVALPARAM;
    }


    if ( ! ( wave_header->dwFlags & WHDR_PREPARED ) )
    {
        DPRINT("I was given a header which hasn't been prepared yet!\n");
        return WAVERR_UNPREPARED;
    }


    if ( wave_header->dwFlags & WHDR_INQUEUE )
    {
        DPRINT("I was given a header for a buffer which is already playing\n");
        return WAVERR_STILLPLAYING;
    }


    wave_header->dwBytesRecorded = 0;


    wave_header->dwFlags &= ~WHDR_DONE;
    wave_header->dwFlags |= WHDR_INQUEUE;


    wave_header->reserved = (DWORD_PTR) session_info;


    previous_node = ((void*)0);
    queue_node = session_info->wave_queue;

    while ( queue_node )
    {
        previous_node = queue_node;
        queue_node = queue_node->lpNext;
    }


    queue_node = previous_node;


    queue_node->lpNext = wave_header;
    wave_header->lpNext = ((void*)0);
    return MMSYSERR_NOERROR;
}
