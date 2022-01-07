
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int sequnum ;
typedef int data ;
struct TYPE_3__ {int audio_sequnum; } ;
typedef int Group_Chats ;
typedef TYPE_1__ Group_AV ;


 int GROUP_AUDIO_PACKET_ID ;
 TYPE_1__* group_get_object (int *,int) ;
 int htons (int ) ;
 int memcpy (int*,int*,int) ;
 int send_group_lossy_packet (int *,int,int*,int) ;

__attribute__((used)) static int send_audio_packet(Group_Chats *g_c, int groupnumber, uint8_t *packet, uint16_t length)
{
    if (!length)
        return -1;

    Group_AV *group_av = group_get_object(g_c, groupnumber);
    uint8_t data[1 + sizeof(uint16_t) + length];
    data[0] = GROUP_AUDIO_PACKET_ID;

    uint16_t sequnum = htons(group_av->audio_sequnum);
    memcpy(data + 1, &sequnum, sizeof(sequnum));
    memcpy(data + 1 + sizeof(sequnum), packet, length);

    if (send_group_lossy_packet(g_c, groupnumber, data, sizeof(data)) == -1)
        return -1;

    ++group_av->audio_sequnum;
    return 0;
}
