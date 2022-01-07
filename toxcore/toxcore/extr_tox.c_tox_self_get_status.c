
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tox ;
typedef int TOX_USER_STATUS ;
typedef int Messenger ;


 int m_get_self_userstatus (int const*) ;

TOX_USER_STATUS tox_self_get_status(const Tox *tox)
{
    const Messenger *m = tox;
    return m_get_self_userstatus(m);
}
