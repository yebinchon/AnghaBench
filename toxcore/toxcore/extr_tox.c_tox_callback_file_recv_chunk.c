
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tox_file_recv_chunk_cb ;
typedef int Tox ;
typedef int Messenger ;


 int callback_file_data (int *,int *,void*) ;

void tox_callback_file_recv_chunk(Tox *tox, tox_file_recv_chunk_cb *function, void *user_data)
{
    Messenger *m = tox;
    callback_file_data(m, function, user_data);
}
