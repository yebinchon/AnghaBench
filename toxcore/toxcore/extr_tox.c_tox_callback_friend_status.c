
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tox_friend_status_cb ;
typedef int Tox ;
typedef int Messenger ;


 int m_callback_userstatus (int *,int *,void*) ;

void tox_callback_friend_status(Tox *tox, tox_friend_status_cb *function, void *user_data)
{
    Messenger *m = tox;
    m_callback_userstatus(m, function, user_data);
}
