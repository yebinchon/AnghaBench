#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  scalar_t__ uint32_t ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  string ;
typedef  int /*<<< orphan*/  sock_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_4__ {int /*<<< orphan*/  in_addr; } ;
struct TYPE_5__ {TYPE_1__ ip4; void* family; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ IP ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int TOX_ADDRESS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*,int,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,struct sockaddr*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (char*) ; 
 scalar_t__ FUNC13 (void*,char*,char*,int,scalar_t__) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (void*,char*,int,scalar_t__*,char*,int) ; 

int FUNC16(int argc, char *argv[])
{
    if (argc < 4) {
        FUNC6("Usage: %s domain domain_public_key queried_username\nEX: %s utox.org D3154F65D28A5B41A05D4AC7E4B39C6B1C233CC857FB365C56E8392737462A12 username\n",
               argv[0], argv[0]);
        FUNC2(0);
    }

    IP ip = {0};
    ip.family = AF_INET;
    sock_t sock = FUNC11(ip.family, SOCK_DGRAM, IPPROTO_UDP);

    if (!FUNC10(sock))
        return -1;

    if (!FUNC0(argv[1], &ip, 0))
        return -1;

    struct sockaddr_in target;
    size_t addrsize = sizeof(struct sockaddr_in);
    target.sin_family = AF_INET;
    target.sin_addr = ip.ip4.in_addr;
    target.sin_port = FUNC4(53);

    uint8_t string[1024] = {0};
    void *d = FUNC14(FUNC3(argv[2]));
    unsigned int i;
    uint32_t request_id;
    /*
    for (i = 0; i < 255; ++i) {
        tox_generate_dns3_string(d, string, sizeof(string), &request_id, string, i);
        printf("%s\n", string);
    }*/
    int len = FUNC15(d, string + 1, sizeof(string) - 1, &request_id, (uint8_t *)argv[3], FUNC12(argv[3]));

    if (len == -1)
        return -1;

    string[0] = '_';
    FUNC5(string + len + 1, "._tox.", sizeof("._tox."));
    FUNC5((char *)(string + len + 1 + sizeof("._tox.") - 1), argv[1], FUNC12(argv[1]));
    uint8_t packet[512];
    uint8_t id = FUNC7();
    uint32_t p_len = FUNC1(packet, string, FUNC12((char *)string), id);

    if (FUNC9(sock, (char *) packet, p_len, 0, (struct sockaddr *)&target, addrsize) != p_len)
        return -1;

    uint8_t buffer[512] = {};
    int r_len = FUNC8(sock, buffer, sizeof(buffer), 0);

    if (r_len < (int)p_len)
        return -1;

    for (i = r_len - 1; i != 0 && buffer[i] != '='; --i);

    uint8_t tox_id[TOX_ADDRESS_SIZE];

    if (FUNC13(d, tox_id, buffer + i + 1, r_len - (i + 1), request_id) != 0)
        return -1;

    FUNC6("The Tox id for username %s is:\n", argv[3]);

    //unsigned int i;
    for (i = 0; i < TOX_ADDRESS_SIZE; ++i) {
        FUNC6("%02hhX", tox_id[i]);
    }

    FUNC6("\n");
    return 0;
}