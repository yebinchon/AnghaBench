#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  const uint64_t ;
typedef  int /*<<< orphan*/  const uint32_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_3__ {int /*<<< orphan*/  announce_ping_array; } ;
typedef  TYPE_1__ Onion_Client ;
typedef  int /*<<< orphan*/  const IP_Port ;

/* Variables and functions */
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 

__attribute__((used)) static uint32_t FUNC2(Onion_Client *onion_c, const uint8_t *sendback, uint8_t *ret_pubkey,
                               IP_Port *ret_ip_port, uint32_t *path_num)
{
    uint64_t sback;
    FUNC0(&sback, sendback, sizeof(uint64_t));
    uint8_t data[sizeof(uint32_t) + crypto_box_PUBLICKEYBYTES + sizeof(IP_Port) + sizeof(uint32_t)];

    if (FUNC1(data, sizeof(data), &onion_c->announce_ping_array, sback) != sizeof(data))
        return ~0;

    FUNC0(ret_pubkey, data + sizeof(uint32_t), crypto_box_PUBLICKEYBYTES);
    FUNC0(ret_ip_port, data + sizeof(uint32_t) + crypto_box_PUBLICKEYBYTES, sizeof(IP_Port));
    FUNC0(path_num, data + sizeof(uint32_t) + crypto_box_PUBLICKEYBYTES + sizeof(IP_Port), sizeof(uint32_t));

    uint32_t num;
    FUNC0(&num, data, sizeof(uint32_t));
    return num;
}