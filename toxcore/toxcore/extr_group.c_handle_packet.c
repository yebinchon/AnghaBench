
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int Group_c ;
typedef int Group_Chats ;




 int PACKET_ID_ONLINE_PACKET ;
 int friend_in_close (int *,int) ;
 int * get_group_c (int *,int) ;
 int handle_direct_packet (int *,int,int*,int,int) ;
 int handle_message_packet_group (int *,int,int*,int,int) ;
 int handle_packet_online (int *,int,int*,int) ;
 int memcpy (int*,int*,int) ;
 int ntohs (int) ;

__attribute__((used)) static int handle_packet(void *object, int friendcon_id, uint8_t *data, uint16_t length)
{
    Group_Chats *g_c = object;

    if (length < 1 + sizeof(uint16_t) + 1)
        return -1;

    if (data[0] == PACKET_ID_ONLINE_PACKET) {
        return handle_packet_online(g_c, friendcon_id, data + 1, length - 1);
    }

    if (data[0] != 129 && data[0] != 128)
        return -1;

    uint16_t groupnumber;
    memcpy(&groupnumber, data + 1, sizeof(uint16_t));
    groupnumber = ntohs(groupnumber);
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    int index = friend_in_close(g, friendcon_id);

    if (index == -1)
        return -1;

    switch (data[0]) {
        case 129: {
            handle_direct_packet(g_c, groupnumber, data + 1 + sizeof(uint16_t), length - (1 + sizeof(uint16_t)), index);
            break;
        }

        case 128: {
            handle_message_packet_group(g_c, groupnumber, data + 1 + sizeof(uint16_t), length - (1 + sizeof(uint16_t)), index);
            break;
        }

        default: {
            return 0;
        }
    }

    return 0;
}
