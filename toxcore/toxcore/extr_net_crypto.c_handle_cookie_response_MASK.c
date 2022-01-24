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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  plain ;

/* Variables and functions */
 int COOKIE_LENGTH ; 
 scalar_t__ COOKIE_RESPONSE_LENGTH ; 
 int crypto_box_NONCEBYTES ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(uint8_t *cookie, uint64_t *number, const uint8_t *packet, uint16_t length,
                                  const uint8_t *shared_key)
{
    if (length != COOKIE_RESPONSE_LENGTH)
        return -1;

    uint8_t plain[COOKIE_LENGTH + sizeof(uint64_t)];
    int len = FUNC0(shared_key, packet + 1, packet + 1 + crypto_box_NONCEBYTES,
                                     length - (1 + crypto_box_NONCEBYTES), plain);

    if (len != sizeof(plain))
        return -1;

    FUNC1(cookie, plain, COOKIE_LENGTH);
    FUNC1(number, plain + COOKIE_LENGTH, sizeof(uint64_t));
    return COOKIE_LENGTH;
}