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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  Tox ;

/* Variables and functions */
 size_t TOX_MAX_CUSTOM_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  custom_packet ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

void FUNC3(Tox *m, uint32_t friend_num, const uint8_t *data, size_t len, void *object)
{
    uint8_t number = *((uint32_t *)object);

    if (len != TOX_MAX_CUSTOM_PACKET_SIZE)
        return;

    uint8_t f_data[len];
    FUNC2(f_data, number, len);

    if (FUNC1(f_data, data, len) == 0) {
        ++custom_packet;
    } else {
        FUNC0("Custom packet fail. %u", number);
    }

    return;
}