#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; int /*<<< orphan*/  member_0; } ;
struct sockaddr {int dummy; } ;
struct sec_TCP_con {int /*<<< orphan*/  sock; int /*<<< orphan*/ * recv_nonce; int /*<<< orphan*/  shared_key; int /*<<< orphan*/ * public_key; int /*<<< orphan*/ * sent_nonce; } ;
typedef  int /*<<< orphan*/  sock_t ;
typedef  int /*<<< orphan*/  addr6_loopback ;
struct TYPE_4__ {int /*<<< orphan*/  public_key; } ;
typedef  TYPE_1__ TCP_Server ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 size_t NUM_PORTS ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int TCP_CLIENT_HANDSHAKE_SIZE ; 
 int TCP_HANDSHAKE_PLAIN_SIZE ; 
 int TCP_SERVER_HANDSHAKE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int crypto_box_BEFORENMBYTES ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int crypto_box_SECRETKEYBYTES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6addr_loopback ; 
 struct sec_TCP_con* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ports ; 
 size_t FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sec_TCP_con *FUNC17(TCP_Server *tcp_s)
{
    struct sec_TCP_con *sec_c = FUNC9(sizeof(struct sec_TCP_con));
    sock_t sock = FUNC16(AF_INET6, SOCK_STREAM, IPPROTO_TCP);
    struct sockaddr_in6 addr6_loopback = {0};
    addr6_loopback.sin6_family = AF_INET6;
    addr6_loopback.sin6_port = FUNC8(ports[FUNC12() % NUM_PORTS]);
    addr6_loopback.sin6_addr = in6addr_loopback;

    int ret = FUNC2(sock, (struct sockaddr *)&addr6_loopback, sizeof(addr6_loopback));
    FUNC1(ret == 0, "Failed to connect to TCP relay server");

    uint8_t f_secret_key[crypto_box_SECRETKEYBYTES];
    FUNC3(sec_c->public_key, f_secret_key);
    FUNC13(sec_c->sent_nonce);

    uint8_t t_secret_key[crypto_box_SECRETKEYBYTES];
    uint8_t handshake_plain[TCP_HANDSHAKE_PLAIN_SIZE];
    FUNC3(handshake_plain, t_secret_key);
    FUNC10(handshake_plain + crypto_box_PUBLICKEYBYTES, sec_c->sent_nonce, crypto_box_NONCEBYTES);
    uint8_t handshake[TCP_CLIENT_HANDSHAKE_SIZE];
    FUNC10(handshake, sec_c->public_key, crypto_box_PUBLICKEYBYTES);
    FUNC11(handshake + crypto_box_PUBLICKEYBYTES);

    ret = FUNC6(tcp_s->public_key, f_secret_key, handshake + crypto_box_PUBLICKEYBYTES, handshake_plain,
                       TCP_HANDSHAKE_PLAIN_SIZE, handshake + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES);
    FUNC1(ret == TCP_CLIENT_HANDSHAKE_SIZE - (crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES),
                  "Encrypt failed.");
    FUNC1(FUNC15(sock, handshake, TCP_CLIENT_HANDSHAKE_SIZE - 1, 0) == TCP_CLIENT_HANDSHAKE_SIZE - 1, "send Failed.");
    FUNC5(tcp_s);
    FUNC0(50);
    FUNC1(FUNC15(sock, handshake + (TCP_CLIENT_HANDSHAKE_SIZE - 1), 1, 0) == 1, "send Failed.");
    FUNC0(50);
    FUNC5(tcp_s);
    uint8_t response[TCP_SERVER_HANDSHAKE_SIZE];
    uint8_t response_plain[TCP_HANDSHAKE_PLAIN_SIZE];
    FUNC1(FUNC14(sock, response, TCP_SERVER_HANDSHAKE_SIZE, 0) == TCP_SERVER_HANDSHAKE_SIZE, "recv Failed.");
    ret = FUNC4(tcp_s->public_key, f_secret_key, response, response + crypto_box_NONCEBYTES,
                       TCP_SERVER_HANDSHAKE_SIZE - crypto_box_NONCEBYTES, response_plain);
    FUNC1(ret == TCP_HANDSHAKE_PLAIN_SIZE, "Decrypt Failed.");
    FUNC7(response_plain, t_secret_key, sec_c->shared_key);
    FUNC10(sec_c->recv_nonce, response_plain + crypto_box_BEFORENMBYTES, crypto_box_NONCEBYTES);
    sec_c->sock = sock;
    return sec_c;
}