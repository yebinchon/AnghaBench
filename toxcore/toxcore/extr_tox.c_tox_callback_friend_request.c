
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tox_friend_request_cb ;
typedef int Tox ;
typedef int Messenger ;


 int m_callback_friendrequest (int *,int *,void*) ;

void tox_callback_friend_request(Tox *tox, tox_friend_request_cb *function, void *user_data)
{
    Messenger *m = tox;
    m_callback_friendrequest(m, function, user_data);
}
