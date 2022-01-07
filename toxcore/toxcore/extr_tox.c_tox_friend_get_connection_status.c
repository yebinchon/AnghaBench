
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Tox ;
typedef int TOX_ERR_FRIEND_QUERY ;
typedef int TOX_CONNECTION ;
typedef int Messenger ;


 int SET_ERROR_PARAMETER (int *,int ) ;
 int TOX_CONNECTION_NONE ;
 int TOX_ERR_FRIEND_QUERY_FRIEND_NOT_FOUND ;
 int TOX_ERR_FRIEND_QUERY_OK ;
 int m_get_friend_connectionstatus (int const*,int ) ;

TOX_CONNECTION tox_friend_get_connection_status(const Tox *tox, uint32_t friend_number, TOX_ERR_FRIEND_QUERY *error)
{
    const Messenger *m = tox;

    int ret = m_get_friend_connectionstatus(m, friend_number);

    if (ret == -1) {
        SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_QUERY_FRIEND_NOT_FOUND);
        return TOX_CONNECTION_NONE;
    }

    SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_QUERY_OK);
    return ret;
}
