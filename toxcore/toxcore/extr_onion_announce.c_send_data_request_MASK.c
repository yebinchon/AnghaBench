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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  request ;
typedef  int /*<<< orphan*/  packet ;
struct TYPE_4__ {int /*<<< orphan*/  ip_port1; } ;
typedef  TYPE_1__ Onion_Path ;
typedef  int /*<<< orphan*/  Networking_Core ;
typedef  int /*<<< orphan*/  IP_Port ;

/* Variables and functions */
 int ONION_MAX_DATA_SIZE ; 
 int ONION_MAX_PACKET_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC3(Networking_Core *net, const Onion_Path *path, IP_Port dest, const uint8_t *public_key,
                      const uint8_t *encrypt_public_key, const uint8_t *nonce, const uint8_t *data, uint16_t length)
{
    uint8_t request[ONION_MAX_DATA_SIZE];
    int len = FUNC0(request, sizeof(request), public_key, encrypt_public_key, nonce, data, length);

    if (len == -1)
        return -1;

    uint8_t packet[ONION_MAX_PACKET_SIZE];
    len = FUNC1(packet, sizeof(packet), path, dest, request, len);

    if (len == -1)
        return -1;

    if (FUNC2(net, path->ip_port1, packet, len) != len)
        return -1;

    return 0;
}