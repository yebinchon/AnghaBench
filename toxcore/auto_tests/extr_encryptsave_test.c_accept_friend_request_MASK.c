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
typedef  int /*<<< orphan*/  Tox ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void FUNC2(Tox *m, const uint8_t *public_key, const uint8_t *data, size_t length, void *userdata)
{
    if (*((uint32_t *)userdata) != 974536)
        return;

    if (length == 7 && FUNC0("Gentoo", data, 7) == 0) {
        FUNC1(m, public_key, 0);
    }
}