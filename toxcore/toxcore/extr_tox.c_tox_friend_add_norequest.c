
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
typedef int Tox ;
typedef int TOX_ERR_FRIEND_ADD ;
typedef int Messenger ;


 int SET_ERROR_PARAMETER (int *,int ) ;
 int TOX_ERR_FRIEND_ADD_NULL ;
 int TOX_ERR_FRIEND_ADD_OK ;
 scalar_t__ UINT32_MAX ;
 scalar_t__ m_addfriend_norequest (int *,int const*) ;
 int set_friend_error (scalar_t__,int *) ;

uint32_t tox_friend_add_norequest(Tox *tox, const uint8_t *public_key, TOX_ERR_FRIEND_ADD *error)
{
    if (!public_key) {
        SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_ADD_NULL);
        return UINT32_MAX;
    }

    Messenger *m = tox;
    int32_t ret = m_addfriend_norequest(m, public_key);

    if (ret >= 0) {
        SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_ADD_OK);
        return ret;
    }

    set_friend_error(ret, error);
    return UINT32_MAX;
}
