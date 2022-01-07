
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Tox ;
typedef int Messenger ;


 int m_copy_self_statusmessage (int const*,int *) ;

void tox_self_get_status_message(const Tox *tox, uint8_t *status)
{
    if (status) {
        const Messenger *m = tox;
        m_copy_self_statusmessage(m, status);
    }
}
