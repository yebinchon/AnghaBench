
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tox_friend_name_cb ;
typedef int Tox ;
typedef int Messenger ;


 int m_callback_namechange (int *,int *,void*) ;

void tox_callback_friend_name(Tox *tox, tox_friend_name_cb *function, void *user_data)
{
    Messenger *m = tox;
    m_callback_namechange(m, function, user_data);
}
