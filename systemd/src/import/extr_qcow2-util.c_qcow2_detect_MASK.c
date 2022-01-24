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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  id ;
typedef  scalar_t__ be32_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QCOW2_MAGIC ; 
 int errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,scalar_t__*,int,int /*<<< orphan*/ ) ; 

int FUNC2(int fd) {
        be32_t id;
        ssize_t l;

        l = FUNC1(fd, &id, sizeof(id), 0);
        if (l < 0)
                return -errno;
        if (l != sizeof(id))
                return -EIO;

        return FUNC0(QCOW2_MAGIC) == id;
}