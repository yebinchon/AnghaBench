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
typedef  int /*<<< orphan*/  sd_netlink_message ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  NETLINK_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned short,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned short,void**,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (void*,int) ; 

int FUNC4(sd_netlink_message *m, unsigned short type, const char **data) {
        int r;
        void *attr_data;

        FUNC0(m, -EINVAL);

        r = FUNC1(m, NULL, type, NETLINK_TYPE_STRING);
        if (r < 0)
                return r;

        r = FUNC2(m, type, &attr_data, NULL);
        if (r < 0)
                return r;
        else if (FUNC3(attr_data, r) >= (size_t) r)
                return -EIO;

        if (data)
                *data = (const char *) attr_data;

        return 0;
}