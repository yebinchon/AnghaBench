
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TOX_ERR_FRIEND_SEND_MESSAGE ;


 int SET_ERROR_PARAMETER (int *,int ) ;
 int TOX_ERR_FRIEND_SEND_MESSAGE_FRIEND_NOT_CONNECTED ;
 int TOX_ERR_FRIEND_SEND_MESSAGE_FRIEND_NOT_FOUND ;
 int TOX_ERR_FRIEND_SEND_MESSAGE_OK ;
 int TOX_ERR_FRIEND_SEND_MESSAGE_SENDQ ;
 int TOX_ERR_FRIEND_SEND_MESSAGE_TOO_LONG ;

__attribute__((used)) static void set_message_error(int ret, TOX_ERR_FRIEND_SEND_MESSAGE *error)
{
    switch (ret) {
        case 0:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_SEND_MESSAGE_OK);
            break;

        case -1:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_SEND_MESSAGE_FRIEND_NOT_FOUND);
            break;

        case -2:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_SEND_MESSAGE_TOO_LONG);
            break;

        case -3:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_SEND_MESSAGE_FRIEND_NOT_CONNECTED);
            break;

        case -4:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_SEND_MESSAGE_SENDQ);
            break;

        case -5:

            break;
    }
}
