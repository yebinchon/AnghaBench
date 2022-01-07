
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct sockaddr_in6 {int sin6_addr; int sin6_port; int sin6_family; int member_0; } ;
struct sockaddr {int dummy; } ;
struct sec_TCP_con {int sock; int * recv_nonce; int shared_key; int * public_key; int * sent_nonce; } ;
typedef int sock_t ;
typedef int addr6_loopback ;
struct TYPE_4__ {int public_key; } ;
typedef TYPE_1__ TCP_Server ;


 int AF_INET6 ;
 int IPPROTO_TCP ;
 size_t NUM_PORTS ;
 int SOCK_STREAM ;
 int TCP_CLIENT_HANDSHAKE_SIZE ;
 int TCP_HANDSHAKE_PLAIN_SIZE ;
 int TCP_SERVER_HANDSHAKE_SIZE ;
 int c_sleep (int) ;
 int ck_assert_msg (int,char*) ;
 int connect (int ,struct sockaddr*,int) ;
 int crypto_box_BEFORENMBYTES ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int crypto_box_SECRETKEYBYTES ;
 int crypto_box_keypair (int *,int *) ;
 int decrypt_data (int ,int *,int *,int *,int,int *) ;
 int do_TCP_server (TYPE_1__*) ;
 int encrypt_data (int ,int *,int *,int *,int,int *) ;
 int encrypt_precompute (int *,int *,int ) ;
 int htons (int ) ;
 int in6addr_loopback ;
 struct sec_TCP_con* malloc (int) ;
 int memcpy (int *,int *,int) ;
 int new_nonce (int *) ;
 int * ports ;
 size_t rand () ;
 int random_nonce (int *) ;
 int recv (int ,int *,int,int ) ;
 int send (int ,int *,int,int ) ;
 int socket (int ,int ,int ) ;

struct sec_TCP_con *new_TCP_con(TCP_Server *tcp_s)
{
    struct sec_TCP_con *sec_c = malloc(sizeof(struct sec_TCP_con));
    sock_t sock = socket(AF_INET6, SOCK_STREAM, IPPROTO_TCP);
    struct sockaddr_in6 addr6_loopback = {0};
    addr6_loopback.sin6_family = AF_INET6;
    addr6_loopback.sin6_port = htons(ports[rand() % NUM_PORTS]);
    addr6_loopback.sin6_addr = in6addr_loopback;

    int ret = connect(sock, (struct sockaddr *)&addr6_loopback, sizeof(addr6_loopback));
    ck_assert_msg(ret == 0, "Failed to connect to TCP relay server");

    uint8_t f_secret_key[crypto_box_SECRETKEYBYTES];
    crypto_box_keypair(sec_c->public_key, f_secret_key);
    random_nonce(sec_c->sent_nonce);

    uint8_t t_secret_key[crypto_box_SECRETKEYBYTES];
    uint8_t handshake_plain[TCP_HANDSHAKE_PLAIN_SIZE];
    crypto_box_keypair(handshake_plain, t_secret_key);
    memcpy(handshake_plain + crypto_box_PUBLICKEYBYTES, sec_c->sent_nonce, crypto_box_NONCEBYTES);
    uint8_t handshake[TCP_CLIENT_HANDSHAKE_SIZE];
    memcpy(handshake, sec_c->public_key, crypto_box_PUBLICKEYBYTES);
    new_nonce(handshake + crypto_box_PUBLICKEYBYTES);

    ret = encrypt_data(tcp_s->public_key, f_secret_key, handshake + crypto_box_PUBLICKEYBYTES, handshake_plain,
                       TCP_HANDSHAKE_PLAIN_SIZE, handshake + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES);
    ck_assert_msg(ret == TCP_CLIENT_HANDSHAKE_SIZE - (crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES),
                  "Encrypt failed.");
    ck_assert_msg(send(sock, handshake, TCP_CLIENT_HANDSHAKE_SIZE - 1, 0) == TCP_CLIENT_HANDSHAKE_SIZE - 1, "send Failed.");
    do_TCP_server(tcp_s);
    c_sleep(50);
    ck_assert_msg(send(sock, handshake + (TCP_CLIENT_HANDSHAKE_SIZE - 1), 1, 0) == 1, "send Failed.");
    c_sleep(50);
    do_TCP_server(tcp_s);
    uint8_t response[TCP_SERVER_HANDSHAKE_SIZE];
    uint8_t response_plain[TCP_HANDSHAKE_PLAIN_SIZE];
    ck_assert_msg(recv(sock, response, TCP_SERVER_HANDSHAKE_SIZE, 0) == TCP_SERVER_HANDSHAKE_SIZE, "recv Failed.");
    ret = decrypt_data(tcp_s->public_key, f_secret_key, response, response + crypto_box_NONCEBYTES,
                       TCP_SERVER_HANDSHAKE_SIZE - crypto_box_NONCEBYTES, response_plain);
    ck_assert_msg(ret == TCP_HANDSHAKE_PLAIN_SIZE, "Decrypt Failed.");
    encrypt_precompute(response_plain, t_secret_key, sec_c->shared_key);
    memcpy(sec_c->recv_nonce, response_plain + crypto_box_BEFORENMBYTES, crypto_box_NONCEBYTES);
    sec_c->sock = sock;
    return sec_c;
}
