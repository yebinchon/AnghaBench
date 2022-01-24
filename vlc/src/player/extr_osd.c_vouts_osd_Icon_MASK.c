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
typedef  int /*<<< orphan*/  vout_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  VOUT_SPU_CHANNEL_OSD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,short) ; 

__attribute__((used)) static inline void
FUNC1(vout_thread_t **vouts, size_t count, short type)
{
    for (size_t i = 0; i < count; ++i)
        FUNC0(vouts[i], VOUT_SPU_CHANNEL_OSD, type);
}