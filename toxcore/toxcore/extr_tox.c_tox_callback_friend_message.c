
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tox_friend_message_cb ;
typedef int Tox ;
typedef int Messenger ;


 int m_callback_friendmessage (int *,int *,void*) ;

void tox_callback_friend_message(Tox *tox, tox_friend_message_cb *function, void *user_data)
{
    Messenger *m = tox;
    m_callback_friendmessage(m, function, user_data);
}
