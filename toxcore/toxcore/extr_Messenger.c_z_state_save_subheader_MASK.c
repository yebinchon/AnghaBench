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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  MESSENGER_STATE_COOKIE_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t *FUNC2(uint8_t *data, uint32_t len, uint16_t type)
{
    FUNC0(data, len);
    data += sizeof(uint32_t);
    FUNC0(data, (FUNC1(MESSENGER_STATE_COOKIE_TYPE) << 16) | FUNC1(type));
    data += sizeof(uint32_t);
    return data;
}