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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t sd_bus_message ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t*) ; 
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC2 (size_t*) ; 
 int FUNC3 (size_t*,size_t*,int,int,void**) ; 

__attribute__((used)) static int FUNC4(
                sd_bus_message *m,
                size_t *ri,
                size_t item_size,
                uint32_t *ret) {

        int r;
        void *q;

        FUNC2(m);
        FUNC2(ri);

        if (FUNC1(m) && item_size != 4)
                return -EBADMSG;

        /* identical for gvariant and dbus1 */

        r = FUNC3(m, ri, 4, 4, &q);
        if (r < 0)
                return r;

        if (ret)
                *ret = FUNC0(m, *(uint32_t*) q);

        return 0;
}