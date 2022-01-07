
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int sock_t ;
struct TYPE_17__ {scalar_t__ family; } ;
struct TYPE_22__ {TYPE_1__ ip; } ;
struct TYPE_18__ {scalar_t__ family; } ;
struct TYPE_19__ {TYPE_2__ ip; } ;
struct TYPE_20__ {int proxy_type; TYPE_3__ ip_port; } ;
struct TYPE_21__ {scalar_t__ kill_at; int status; TYPE_4__ proxy_info; TYPE_6__ ip_port; int shared_key; int public_key; int self_public_key; int sock; } ;
typedef TYPE_4__ TCP_Proxy_Info ;
typedef TYPE_5__ TCP_Client_Connection ;
typedef TYPE_6__ IP_Port ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int TCP_CLIENT_CONNECTING ;
 int TCP_CLIENT_PROXY_HTTP_CONNECTING ;
 int TCP_CLIENT_PROXY_SOCKS5_CONNECTING ;
 scalar_t__ TCP_CONNECTION_TIMEOUT ;



 TYPE_5__* calloc (int,int) ;
 scalar_t__ connect_sock_to (int ,TYPE_6__,TYPE_4__*) ;
 int crypto_box_PUBLICKEYBYTES ;
 int encrypt_precompute (int ,scalar_t__ const*,int ) ;
 int free (TYPE_5__*) ;
 int generate_handshake (TYPE_5__*) ;
 int kill_sock (int ) ;
 int memcpy (int ,scalar_t__ const*,int ) ;
 scalar_t__ networking_at_startup () ;
 int proxy_http_generate_connection_request (TYPE_5__*) ;
 int proxy_socks5_generate_handshake (TYPE_5__*) ;
 scalar_t__ set_socket_nonblock (int ) ;
 int set_socket_nosigpipe (int ) ;
 int sock_valid (int ) ;
 int socket (scalar_t__,int ,int ) ;
 scalar_t__ unix_time () ;

TCP_Client_Connection *new_TCP_connection(IP_Port ip_port, const uint8_t *public_key, const uint8_t *self_public_key,
        const uint8_t *self_secret_key, TCP_Proxy_Info *proxy_info)
{
    if (networking_at_startup() != 0) {
        return ((void*)0);
    }

    if (ip_port.ip.family != AF_INET && ip_port.ip.family != AF_INET6)
        return ((void*)0);

    uint8_t family = ip_port.ip.family;

    TCP_Proxy_Info default_proxyinfo;

    if (proxy_info == ((void*)0)) {
        default_proxyinfo.proxy_type = 129;
        proxy_info = &default_proxyinfo;
    }

    if (proxy_info->proxy_type != 129) {
        family = proxy_info->ip_port.ip.family;
    }

    sock_t sock = socket(family, SOCK_STREAM, IPPROTO_TCP);

    if (!sock_valid(sock)) {
        return ((void*)0);
    }

    if (!set_socket_nosigpipe(sock)) {
        kill_sock(sock);
        return 0;
    }

    if (!(set_socket_nonblock(sock) && connect_sock_to(sock, ip_port, proxy_info))) {
        kill_sock(sock);
        return ((void*)0);
    }

    TCP_Client_Connection *temp = calloc(sizeof(TCP_Client_Connection), 1);

    if (temp == ((void*)0)) {
        kill_sock(sock);
        return ((void*)0);
    }

    temp->sock = sock;
    memcpy(temp->public_key, public_key, crypto_box_PUBLICKEYBYTES);
    memcpy(temp->self_public_key, self_public_key, crypto_box_PUBLICKEYBYTES);
    encrypt_precompute(temp->public_key, self_secret_key, temp->shared_key);
    temp->ip_port = ip_port;
    temp->proxy_info = *proxy_info;

    switch (proxy_info->proxy_type) {
        case 130:
            temp->status = TCP_CLIENT_PROXY_HTTP_CONNECTING;
            proxy_http_generate_connection_request(temp);
            break;

        case 128:
            temp->status = TCP_CLIENT_PROXY_SOCKS5_CONNECTING;
            proxy_socks5_generate_handshake(temp);
            break;

        case 129:
            temp->status = TCP_CLIENT_CONNECTING;

            if (generate_handshake(temp) == -1) {
                kill_sock(sock);
                free(temp);
                return ((void*)0);
            }

            break;
    }

    temp->kill_at = unix_time() + TCP_CONNECTION_TIMEOUT;

    return temp;
}
