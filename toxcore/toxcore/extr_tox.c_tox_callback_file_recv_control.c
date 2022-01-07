
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tox_file_recv_control_cb ;
typedef int Tox ;
typedef int Messenger ;


 int callback_file_control (int *,int *,void*) ;

void tox_callback_file_recv_control(Tox *tox, tox_file_recv_control_cb *function, void *user_data)
{
    Messenger *m = tox;
    callback_file_control(m, function, user_data);
}
