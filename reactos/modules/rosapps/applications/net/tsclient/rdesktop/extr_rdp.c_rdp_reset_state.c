
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rdp_shareid; int * next_packet; } ;
typedef TYPE_1__ RDPCLIENT ;


 int sec_reset_state (TYPE_1__*) ;

void
rdp_reset_state(RDPCLIENT * This)
{
 This->next_packet = ((void*)0);
 This->rdp_shareid = 0;
 sec_reset_state(This);
}
