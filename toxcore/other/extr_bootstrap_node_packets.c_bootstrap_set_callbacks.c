
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int Networking_Core ;


 int BOOTSTRAP_INFO_PACKET_ID ;
 scalar_t__ MAX_MOTD_LENGTH ;
 int bootstrap_motd ;
 scalar_t__ bootstrap_motd_length ;
 int bootstrap_version ;
 int handle_info_request ;
 int htonl (int ) ;
 int memcpy (int ,int *,scalar_t__) ;
 int networking_registerhandler (int *,int ,int *,int *) ;

int bootstrap_set_callbacks(Networking_Core *net, uint32_t version, uint8_t *motd, uint16_t motd_length)
{
    if (motd_length > MAX_MOTD_LENGTH)
        return -1;

    bootstrap_version = htonl(version);
    memcpy(bootstrap_motd, motd, motd_length);
    bootstrap_motd_length = motd_length;

    networking_registerhandler(net, BOOTSTRAP_INFO_PACKET_ID, &handle_info_request, net);
    return 0;
}
