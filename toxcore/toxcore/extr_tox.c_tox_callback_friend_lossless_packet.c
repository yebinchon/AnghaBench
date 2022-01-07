
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tox_friend_lossless_packet_cb ;
typedef int Tox ;
typedef int Messenger ;


 int custom_lossless_packet_registerhandler (int *,int *,void*) ;

void tox_callback_friend_lossless_packet(Tox *tox, tox_friend_lossless_packet_cb *function, void *user_data)
{
    Messenger *m = tox;
    custom_lossless_packet_registerhandler(m, function, user_data);
}
