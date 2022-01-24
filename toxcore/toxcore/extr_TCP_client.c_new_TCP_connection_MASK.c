#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  sock_t ;
struct TYPE_17__ {scalar_t__ family; } ;
struct TYPE_22__ {TYPE_1__ ip; } ;
struct TYPE_18__ {scalar_t__ family; } ;
struct TYPE_19__ {TYPE_2__ ip; } ;
struct TYPE_20__ {int proxy_type; TYPE_3__ ip_port; } ;
struct TYPE_21__ {scalar_t__ kill_at; int /*<<< orphan*/  status; TYPE_4__ proxy_info; TYPE_6__ ip_port; int /*<<< orphan*/  shared_key; int /*<<< orphan*/  public_key; int /*<<< orphan*/  self_public_key; int /*<<< orphan*/  sock; } ;
typedef  TYPE_4__ TCP_Proxy_Info ;
typedef  TYPE_5__ TCP_Client_Connection ;
typedef  TYPE_6__ IP_Port ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_CLIENT_CONNECTING ; 
 int /*<<< orphan*/  TCP_CLIENT_PROXY_HTTP_CONNECTING ; 
 int /*<<< orphan*/  TCP_CLIENT_PROXY_SOCKS5_CONNECTING ; 
 scalar_t__ TCP_CONNECTION_TIMEOUT ; 
#define  TCP_PROXY_HTTP 130 
#define  TCP_PROXY_NONE 129 
#define  TCP_PROXY_SOCKS5 128 
 TYPE_5__* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_6__,TYPE_4__*) ; 
 int /*<<< orphan*/  crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 () ; 

TCP_Client_Connection *FUNC15(IP_Port ip_port, const uint8_t *public_key, const uint8_t *self_public_key,
        const uint8_t *self_secret_key, TCP_Proxy_Info *proxy_info)
{
    if (FUNC7() != 0) {
        return NULL;
    }

    if (ip_port.ip.family != AF_INET && ip_port.ip.family != AF_INET6)
        return NULL;

    uint8_t family = ip_port.ip.family;

    TCP_Proxy_Info default_proxyinfo;

    if (proxy_info == NULL) {
        default_proxyinfo.proxy_type = TCP_PROXY_NONE;
        proxy_info = &default_proxyinfo;
    }

    if (proxy_info->proxy_type != TCP_PROXY_NONE) {
        family = proxy_info->ip_port.ip.family;
    }

    sock_t sock = FUNC13(family, SOCK_STREAM, IPPROTO_TCP);

    if (!FUNC12(sock)) {
        return NULL;
    }

    if (!FUNC11(sock)) {
        FUNC5(sock);
        return 0;
    }

    if (!(FUNC10(sock) && FUNC1(sock, ip_port, proxy_info))) {
        FUNC5(sock);
        return NULL;
    }

    TCP_Client_Connection *temp = FUNC0(sizeof(TCP_Client_Connection), 1);

    if (temp == NULL) {
        FUNC5(sock);
        return NULL;
    }

    temp->sock = sock;
    FUNC6(temp->public_key, public_key, crypto_box_PUBLICKEYBYTES);
    FUNC6(temp->self_public_key, self_public_key, crypto_box_PUBLICKEYBYTES);
    FUNC2(temp->public_key, self_secret_key, temp->shared_key);
    temp->ip_port = ip_port;
    temp->proxy_info = *proxy_info;

    switch (proxy_info->proxy_type) {
        case TCP_PROXY_HTTP:
            temp->status = TCP_CLIENT_PROXY_HTTP_CONNECTING;
            FUNC8(temp);
            break;

        case TCP_PROXY_SOCKS5:
            temp->status = TCP_CLIENT_PROXY_SOCKS5_CONNECTING;
            FUNC9(temp);
            break;

        case TCP_PROXY_NONE:
            temp->status = TCP_CLIENT_CONNECTING;

            if (FUNC4(temp) == -1) {
                FUNC5(sock);
                FUNC3(temp);
                return NULL;
            }

            break;
    }

    temp->kill_at = FUNC14() + TCP_CONNECTION_TIMEOUT;

    return temp;
}