
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tox ;
typedef int TOX_USER_STATUS ;
typedef int Messenger ;


 int m_set_userstatus (int *,int ) ;

void tox_self_set_status(Tox *tox, TOX_USER_STATUS user_status)
{
    Messenger *m = tox;
    m_set_userstatus(m, user_status);
}
