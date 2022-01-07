
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
typedef scalar_t__ uint32_t ;
struct sockaddr_in {int sin_port; int sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int string ;
typedef int sock_t ;
typedef int buffer ;
struct TYPE_4__ {int in_addr; } ;
struct TYPE_5__ {TYPE_1__ ip4; void* family; int member_0; } ;
typedef TYPE_2__ IP ;


 void* AF_INET ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 int TOX_ADDRESS_SIZE ;
 int addr_resolve_or_parse_ip (char*,TYPE_2__*,int ) ;
 scalar_t__ create_packet (char*,char*,int,char) ;
 int exit (int ) ;
 int hex_string_to_bin (char*) ;
 int htons (int) ;
 int memcpy (char*,char*,int) ;
 int printf (char*,...) ;
 char rand () ;
 int recv (int ,char*,int,int ) ;
 scalar_t__ sendto (int ,char*,scalar_t__,int ,struct sockaddr*,size_t) ;
 int sock_valid (int ) ;
 int socket (void*,int ,int ) ;
 int strlen (char*) ;
 scalar_t__ tox_decrypt_dns3_TXT (void*,char*,char*,int,scalar_t__) ;
 void* tox_dns3_new (int ) ;
 int tox_generate_dns3_string (void*,char*,int,scalar_t__*,char*,int) ;

int main(int argc, char *argv[])
{
    if (argc < 4) {
        printf("Usage: %s domain domain_public_key queried_username\nEX: %s utox.org D3154F65D28A5B41A05D4AC7E4B39C6B1C233CC857FB365C56E8392737462A12 username\n",
               argv[0], argv[0]);
        exit(0);
    }

    IP ip = {0};
    ip.family = AF_INET;
    sock_t sock = socket(ip.family, SOCK_DGRAM, IPPROTO_UDP);

    if (!sock_valid(sock))
        return -1;

    if (!addr_resolve_or_parse_ip(argv[1], &ip, 0))
        return -1;

    struct sockaddr_in target;
    size_t addrsize = sizeof(struct sockaddr_in);
    target.sin_family = AF_INET;
    target.sin_addr = ip.ip4.in_addr;
    target.sin_port = htons(53);

    uint8_t string[1024] = {0};
    void *d = tox_dns3_new(hex_string_to_bin(argv[2]));
    unsigned int i;
    uint32_t request_id;





    int len = tox_generate_dns3_string(d, string + 1, sizeof(string) - 1, &request_id, (uint8_t *)argv[3], strlen(argv[3]));

    if (len == -1)
        return -1;

    string[0] = '_';
    memcpy(string + len + 1, "._tox.", sizeof("._tox."));
    memcpy((char *)(string + len + 1 + sizeof("._tox.") - 1), argv[1], strlen(argv[1]));
    uint8_t packet[512];
    uint8_t id = rand();
    uint32_t p_len = create_packet(packet, string, strlen((char *)string), id);

    if (sendto(sock, (char *) packet, p_len, 0, (struct sockaddr *)&target, addrsize) != p_len)
        return -1;

    uint8_t buffer[512] = {};
    int r_len = recv(sock, buffer, sizeof(buffer), 0);

    if (r_len < (int)p_len)
        return -1;

    for (i = r_len - 1; i != 0 && buffer[i] != '='; --i);

    uint8_t tox_id[TOX_ADDRESS_SIZE];

    if (tox_decrypt_dns3_TXT(d, tox_id, buffer + i + 1, r_len - (i + 1), request_id) != 0)
        return -1;

    printf("The Tox id for username %s is:\n", argv[3]);


    for (i = 0; i < TOX_ADDRESS_SIZE; ++i) {
        printf("%02hhX", tox_id[i]);
    }

    printf("\n");
    return 0;
}
