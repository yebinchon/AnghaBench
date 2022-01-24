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
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  packet ;
struct TYPE_4__ {int /*<<< orphan*/  net_crypto; } ;
typedef  TYPE_1__ Friend_Connections ;

/* Variables and functions */
 int MAX_CRYPTO_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static unsigned int FUNC4(Friend_Connections *fr_c, int friendcon_id, uint8_t packet_id,
        uint16_t group_num, const uint8_t *data, uint16_t length)
{
    if (1 + sizeof(uint16_t) + length > MAX_CRYPTO_DATA_SIZE)
        return 0;

    group_num = FUNC1(group_num);
    uint8_t packet[1 + sizeof(uint16_t) + length];
    packet[0] = packet_id;
    FUNC2(packet + 1, &group_num, sizeof(uint16_t));
    FUNC2(packet + 1 + sizeof(uint16_t), data, length);
    return FUNC3(fr_c->net_crypto, FUNC0(fr_c, friendcon_id), packet,
                                  sizeof(packet)) != -1;
}