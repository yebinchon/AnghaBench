
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Tox ;
typedef int TOX_USER_STATUS ;
typedef int TOX_ERR_FRIEND_QUERY ;
typedef int Messenger ;


 int SET_ERROR_PARAMETER (int *,int ) ;
 int TOX_ERR_FRIEND_QUERY_FRIEND_NOT_FOUND ;
 int TOX_ERR_FRIEND_QUERY_OK ;
 int TOX_USER_STATUS_BUSY ;
 int USERSTATUS_INVALID ;
 int m_get_userstatus (int const*,int ) ;

TOX_USER_STATUS tox_friend_get_status(const Tox *tox, uint32_t friend_number, TOX_ERR_FRIEND_QUERY *error)
{
    const Messenger *m = tox;

    int ret = m_get_userstatus(m, friend_number);

    if (ret == USERSTATUS_INVALID) {
        SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_QUERY_FRIEND_NOT_FOUND);
        return TOX_USER_STATUS_BUSY + 1;
    }

    SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_QUERY_OK);
    return ret;
}
