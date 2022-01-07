
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tox_self_connection_status_cb ;
typedef int Tox ;
typedef int Messenger ;


 int m_callback_core_connection (int *,int *,void*) ;

void tox_callback_self_connection_status(Tox *tox, tox_self_connection_status_cb *function, void *user_data)
{
    Messenger *m = tox;
    m_callback_core_connection(m, function, user_data);
}
