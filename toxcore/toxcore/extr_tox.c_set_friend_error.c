
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int TOX_ERR_FRIEND_ADD ;
 int SET_ERROR_PARAMETER (int *,int ) ;
 int TOX_ERR_FRIEND_ADD_ALREADY_SENT ;
 int TOX_ERR_FRIEND_ADD_BAD_CHECKSUM ;
 int TOX_ERR_FRIEND_ADD_MALLOC ;
 int TOX_ERR_FRIEND_ADD_NO_MESSAGE ;
 int TOX_ERR_FRIEND_ADD_OWN_KEY ;
 int TOX_ERR_FRIEND_ADD_SET_NEW_NOSPAM ;
 int TOX_ERR_FRIEND_ADD_TOO_LONG ;

__attribute__((used)) static void set_friend_error(int32_t ret, TOX_ERR_FRIEND_ADD *error)
{
    switch (ret) {
        case 128:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_ADD_TOO_LONG);
            break;

        case 131:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_ADD_NO_MESSAGE);
            break;

        case 130:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_ADD_OWN_KEY);
            break;

        case 134:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_ADD_ALREADY_SENT);
            break;

        case 133:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_ADD_BAD_CHECKSUM);
            break;

        case 129:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_ADD_SET_NEW_NOSPAM);
            break;

        case 132:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_ADD_MALLOC);
            break;

    }
}
