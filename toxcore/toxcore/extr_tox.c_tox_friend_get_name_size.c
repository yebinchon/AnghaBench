
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Tox ;
typedef int TOX_ERR_FRIEND_QUERY ;
typedef int Messenger ;


 int SET_ERROR_PARAMETER (int *,int ) ;
 size_t SIZE_MAX ;
 int TOX_ERR_FRIEND_QUERY_FRIEND_NOT_FOUND ;
 int TOX_ERR_FRIEND_QUERY_OK ;
 int m_get_name_size (int const*,int ) ;

size_t tox_friend_get_name_size(const Tox *tox, uint32_t friend_number, TOX_ERR_FRIEND_QUERY *error)
{
    const Messenger *m = tox;
    int ret = m_get_name_size(m, friend_number);

    if (ret == -1) {
        SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_QUERY_FRIEND_NOT_FOUND);
        return SIZE_MAX;
    }

    SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_QUERY_OK);
    return ret;
}
