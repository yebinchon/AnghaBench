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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,char*,int) ; 
 int tcp_oobdata_callback_called ; 
 scalar_t__ FUNC1 (void*,unsigned int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC2(void *object, const uint8_t *public_key, unsigned int id, const uint8_t *data,
                                uint16_t length)
{
    if (length != 6)
        return -1;

    if (FUNC0(data, "Gentoo", length) != 0)
        return -1;

    if (FUNC1(object, id, public_key, data, length) == 0)
        tcp_oobdata_callback_called = 1;

    return 0;
}