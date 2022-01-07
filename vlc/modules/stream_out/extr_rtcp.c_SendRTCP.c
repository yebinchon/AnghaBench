
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {int packets; int bytes; int counter; int length; int handle; int * payload; } ;
typedef TYPE_1__ rtcp_sender_t ;
struct TYPE_6__ {int i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_2__ block_t ;


 int GetDWBE (int *) ;
 int NTPtime64 () ;
 int SetDWBE (int *,int) ;
 int SetQWBE (int *,int) ;
 int memcpy (int *,scalar_t__,int) ;
 scalar_t__ send (int ,int *,int,int ) ;

void SendRTCP (rtcp_sender_t *restrict rtcp, const block_t *rtp)
{
    if ((rtcp == ((void*)0))
     || (rtp->i_buffer < 12))
        return;


    rtcp->packets++;
    rtcp->bytes += rtp->i_buffer;
    rtcp->counter += rtp->i_buffer;


    if ((rtcp->counter / 80) < rtcp->length)
        return;

    uint8_t *ptr = rtcp->payload;
    uint32_t last = GetDWBE (ptr + 8);
    uint64_t now64 = NTPtime64 ();
    if ((now64 >> 32) < (last + 5))
        return;

    memcpy (ptr + 4, rtp->p_buffer + 8, 4);
    SetQWBE (ptr + 8, now64);
    memcpy (ptr + 16, rtp->p_buffer + 4, 4);
    SetDWBE (ptr + 20, rtcp->packets);
    SetDWBE (ptr + 24, rtcp->bytes);
    memcpy (ptr + 28 + 4, rtp->p_buffer + 8, 4);

    if (send (rtcp->handle, ptr, rtcp->length, 0) == (ssize_t)rtcp->length)
        rtcp->counter = 0;
}
