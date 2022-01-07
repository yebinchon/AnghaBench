
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tox_file_chunk_request_cb ;
typedef int Tox ;
typedef int Messenger ;


 int callback_file_reqchunk (int *,int *,void*) ;

void tox_callback_file_chunk_request(Tox *tox, tox_file_chunk_request_cb *function, void *user_data)
{
    Messenger *m = tox;
    callback_file_reqchunk(m, function, user_data);
}
