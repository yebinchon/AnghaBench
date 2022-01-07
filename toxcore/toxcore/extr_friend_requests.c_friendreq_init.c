
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Friend_Requests ;
typedef int Friend_Connections ;


 int friendreq_handlepacket ;
 int set_friend_request_callback (int *,int *,int *) ;

void friendreq_init(Friend_Requests *fr, Friend_Connections *fr_c)
{
    set_friend_request_callback(fr_c, &friendreq_handlepacket, fr);
}
