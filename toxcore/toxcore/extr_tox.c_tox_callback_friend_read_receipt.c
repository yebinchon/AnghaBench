
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tox_friend_read_receipt_cb ;
typedef int Tox ;
typedef int Messenger ;


 int m_callback_read_receipt (int *,int *,void*) ;

void tox_callback_friend_read_receipt(Tox *tox, tox_friend_read_receipt_cb *function, void *user_data)
{
    Messenger *m = tox;
    m_callback_read_receipt(m, function, user_data);
}
