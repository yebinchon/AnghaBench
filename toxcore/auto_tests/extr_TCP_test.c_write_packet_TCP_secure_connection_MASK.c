#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct sec_TCP_con {int /*<<< orphan*/  sock; int /*<<< orphan*/  sent_nonce; int /*<<< orphan*/  shared_key; } ;
typedef  int /*<<< orphan*/  packet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int crypto_box_MACBYTES ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct sec_TCP_con *con, uint8_t *data, uint16_t length)
{
    uint8_t packet[sizeof(uint16_t) + length + crypto_box_MACBYTES];

    uint16_t c_length = FUNC2(length + crypto_box_MACBYTES);
    FUNC4(packet, &c_length, sizeof(uint16_t));
    int len = FUNC1(con->shared_key, con->sent_nonce, data, length, packet + sizeof(uint16_t));

    if ((unsigned int)len != (sizeof(packet) - sizeof(uint16_t)))
        return -1;

    FUNC3(con->sent_nonce);

    FUNC0(FUNC5(con->sock, packet, sizeof(packet), 0) == sizeof(packet), "send failed");
    return 0;
}