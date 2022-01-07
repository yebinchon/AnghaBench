
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {TYPE_1__* callbacks; } ;
struct TYPE_4__ {int lossy_data_callback_id; int lossy_data_callback_object; int (* lossy_data_callback ) (int ,int ,int const*,int ) ;} ;
typedef int Friend_Connections ;
typedef TYPE_2__ Friend_Conn ;


 unsigned int MAX_FRIEND_CONNECTION_CALLBACKS ;
 TYPE_2__* get_conn (int *,int) ;
 int stub1 (int ,int ,int const*,int ) ;

__attribute__((used)) static int handle_lossy_packet(void *object, int number, const uint8_t *data, uint16_t length)
{
    if (length == 0)
        return -1;

    Friend_Connections *fr_c = object;
    Friend_Conn *friend_con = get_conn(fr_c, number);

    if (!friend_con)
        return -1;

    unsigned int i;

    for (i = 0; i < MAX_FRIEND_CONNECTION_CALLBACKS; ++i) {
        if (friend_con->callbacks[i].lossy_data_callback)
            friend_con->callbacks[i].lossy_data_callback(friend_con->callbacks[i].lossy_data_callback_object,
                    friend_con->callbacks[i].lossy_data_callback_id, data, length);

        friend_con = get_conn(fr_c, number);

        if (!friend_con)
            return -1;
    }

    return 0;
}
