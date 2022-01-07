
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int Tox ;
typedef int TOX_ERR_FRIEND_BY_PUBLIC_KEY ;
typedef int Messenger ;


 int SET_ERROR_PARAMETER (int *,int ) ;
 int TOX_ERR_FRIEND_BY_PUBLIC_KEY_NOT_FOUND ;
 int TOX_ERR_FRIEND_BY_PUBLIC_KEY_NULL ;
 int TOX_ERR_FRIEND_BY_PUBLIC_KEY_OK ;
 int UINT32_MAX ;
 int getfriend_id (int const*,int const*) ;

uint32_t tox_friend_by_public_key(const Tox *tox, const uint8_t *public_key, TOX_ERR_FRIEND_BY_PUBLIC_KEY *error)
{
    if (!public_key) {
        SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_BY_PUBLIC_KEY_NULL);
        return UINT32_MAX;
    }

    const Messenger *m = tox;
    int32_t ret = getfriend_id(m, public_key);

    if (ret == -1) {
        SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_BY_PUBLIC_KEY_NOT_FOUND);
        return UINT32_MAX;
    }

    SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_BY_PUBLIC_KEY_OK);
    return ret;
}
