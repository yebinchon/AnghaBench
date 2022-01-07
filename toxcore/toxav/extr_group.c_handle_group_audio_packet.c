
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int sequnum ;
struct TYPE_8__ {int length; int* data; int sequnum; } ;
struct TYPE_7__ {int buffer; } ;
typedef TYPE_1__ Group_Peer_AV ;
typedef TYPE_2__ Group_Audio_Packet ;


 TYPE_2__* calloc (int,int) ;
 scalar_t__ decode_audio_packet (void*,TYPE_1__*,int,int) ;
 int free (TYPE_2__*) ;
 int memcpy (int*,int const*,int) ;
 int ntohs (int) ;
 int queue (int ,TYPE_2__*) ;

__attribute__((used)) static int handle_group_audio_packet(void *object, int groupnumber, int friendgroupnumber, void *peer_object,
                                     const uint8_t *packet, uint16_t length)
{
    if (!peer_object || !object || length <= sizeof(uint16_t)) {
        return -1;
    }

    Group_Peer_AV *peer_av = peer_object;

    Group_Audio_Packet *pk = calloc(1, sizeof(Group_Audio_Packet) + (length - sizeof(uint16_t)));

    if (!pk) {
        return -1;
    }

    uint16_t sequnum;
    memcpy(&sequnum, packet, sizeof(sequnum));
    pk->sequnum = ntohs(sequnum);
    pk->length = length - sizeof(uint16_t);
    memcpy(pk->data, packet + sizeof(uint16_t), length - sizeof(uint16_t));

    if (queue(peer_av->buffer, pk) == -1) {
        free(pk);
        return -1;
    }

    while (decode_audio_packet(object, peer_av, groupnumber, friendgroupnumber) == 0);

    return 0;
}
