
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_4__ {int* payload; int handle; scalar_t__ length; } ;
typedef TYPE_1__ rtcp_sender_t ;


 int NTPtime64 () ;
 int SetQWBE (int*,int ) ;
 int SetWBE (int*,int) ;
 int free (TYPE_1__*) ;
 int memcpy (int*,int*,int) ;
 int net_Close (int ) ;
 int send (int ,int*,scalar_t__,int ) ;

void CloseRTCP (rtcp_sender_t *rtcp)
{
    if (rtcp == ((void*)0))
        return;

    uint8_t *ptr = rtcp->payload;
    uint64_t now64 = NTPtime64 ();
    SetQWBE (ptr + 8, now64);


    ptr += rtcp->length;
    ptr[0] = (2 << 6) | 1;
    ptr[1] = 203;
    SetWBE (ptr + 2, 1);
    memcpy (ptr + 4, rtcp->payload + 4, 4);
    rtcp->length += 8;



    send (rtcp->handle, rtcp->payload, rtcp->length, 0);
    net_Close (rtcp->handle);
    free (rtcp);
}
