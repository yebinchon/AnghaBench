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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  MAP_KEY_BYTES ; 
 int /*<<< orphan*/  MAP_KEY_PACKETS ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1(int map_fd) {
        uint64_t key, value = 0;
        int r;

        if (map_fd < 0)
                return -EBADF;

        key = MAP_KEY_PACKETS;
        r = FUNC0(map_fd, &key, &value);
        if (r < 0)
                return r;

        key = MAP_KEY_BYTES;
        return FUNC0(map_fd, &key, &value);
}