
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {scalar_t__ use_rdp5; } ;
typedef TYPE_1__ RDPCLIENT ;


 int RDP_KEYRELEASE ;
 int SCANCODE_CHAR_LWIN ;
 int rdp_send_scancode (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void
reset_winkey(RDPCLIENT * This, uint32 ev_time)
{
 if (This->use_rdp5)
 {


  rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_LWIN);
 }
}
