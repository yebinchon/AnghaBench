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
union bpf_attr {int map_fd; int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_MAP_LOOKUP_ELEM ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,union bpf_attr*,int) ; 
 int errno ; 

int FUNC2(int fd, const void *key, void *value) {

        union bpf_attr attr = {
                .map_fd = fd,
                .key = FUNC0(key),
                .value = FUNC0(value),
        };

        if (FUNC1(BPF_MAP_LOOKUP_ELEM, &attr, sizeof(attr)) < 0)
                return -errno;

        return 0;
}