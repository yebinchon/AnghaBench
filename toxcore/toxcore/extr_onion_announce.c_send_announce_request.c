
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int request ;
typedef int packet ;
struct TYPE_7__ {int ip_port; int public_key; } ;
struct TYPE_6__ {int ip_port1; } ;
typedef TYPE_1__ Onion_Path ;
typedef TYPE_2__ Node_format ;
typedef int Networking_Core ;


 int ONION_ANNOUNCE_REQUEST_SIZE ;
 int ONION_MAX_PACKET_SIZE ;
 int create_announce_request (int *,int,int ,int const*,int const*,int const*,int const*,int const*,int ) ;
 int create_onion_packet (int *,int,TYPE_1__ const*,int ,int *,int) ;
 int sendpacket (int *,int ,int *,int) ;

int send_announce_request(Networking_Core *net, const Onion_Path *path, Node_format dest, const uint8_t *public_key,
                          const uint8_t *secret_key, const uint8_t *ping_id, const uint8_t *client_id, const uint8_t *data_public_key,
                          uint64_t sendback_data)
{
    uint8_t request[ONION_ANNOUNCE_REQUEST_SIZE];
    int len = create_announce_request(request, sizeof(request), dest.public_key, public_key, secret_key, ping_id, client_id,
                                      data_public_key, sendback_data);

    if (len != sizeof(request))
        return -1;

    uint8_t packet[ONION_MAX_PACKET_SIZE];
    len = create_onion_packet(packet, sizeof(packet), path, dest.ip_port, request, sizeof(request));

    if (len == -1)
        return -1;

    if (sendpacket(net, path->ip_port1, packet, len) != len)
        return -1;

    return 0;
}
