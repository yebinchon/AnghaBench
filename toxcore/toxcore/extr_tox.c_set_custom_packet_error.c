
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TOX_ERR_FRIEND_CUSTOM_PACKET ;


 int SET_ERROR_PARAMETER (int *,int ) ;
 int TOX_ERR_FRIEND_CUSTOM_PACKET_FRIEND_NOT_CONNECTED ;
 int TOX_ERR_FRIEND_CUSTOM_PACKET_FRIEND_NOT_FOUND ;
 int TOX_ERR_FRIEND_CUSTOM_PACKET_INVALID ;
 int TOX_ERR_FRIEND_CUSTOM_PACKET_OK ;
 int TOX_ERR_FRIEND_CUSTOM_PACKET_SENDQ ;
 int TOX_ERR_FRIEND_CUSTOM_PACKET_TOO_LONG ;

__attribute__((used)) static void set_custom_packet_error(int ret, TOX_ERR_FRIEND_CUSTOM_PACKET *error)
{
    switch (ret) {
        case 0:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_CUSTOM_PACKET_OK);
            break;

        case -1:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_CUSTOM_PACKET_FRIEND_NOT_FOUND);
            break;

        case -2:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_CUSTOM_PACKET_TOO_LONG);
            break;

        case -3:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_CUSTOM_PACKET_INVALID);
            break;

        case -4:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_CUSTOM_PACKET_FRIEND_NOT_CONNECTED);
            break;

        case -5:
            SET_ERROR_PARAMETER(error, TOX_ERR_FRIEND_CUSTOM_PACKET_SENDQ);
            break;
    }
}
