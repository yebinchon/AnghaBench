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
typedef  int uint32_t ;
typedef  size_t sd_bus_message ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t*) ; 
 int EBADMSG ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (size_t*) ; 
 int FUNC2 (size_t*,size_t*,int,int*) ; 
 int FUNC3 (size_t*,size_t*,int,int,void**) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 

__attribute__((used)) static int FUNC6(
                sd_bus_message *m,
                bool (*validate)(const char *p),
                size_t *ri,
                size_t item_size,
                const char **ret) {

        uint32_t l;
        int r;
        void *q;

        FUNC1(m);
        FUNC1(ri);

        if (FUNC0(m)) {

                if (item_size <= 0)
                        return -EBADMSG;

                r = FUNC3(m, ri, 1, item_size, &q);
                if (r < 0)
                        return r;

                l = item_size - 1;
        } else {
                r = FUNC2(m, ri, 4, &l);
                if (r < 0)
                        return r;

                if (l == UINT32_MAX)
                        /* avoid overflow right below */
                        return -EBADMSG;

                r = FUNC3(m, ri, 1, l+1, &q);
                if (r < 0)
                        return r;
        }

        if (validate) {
                if (!FUNC4(q, l))
                        return -EBADMSG;

                if (!validate(q))
                        return -EBADMSG;
        } else {
                if (!FUNC5(q, l))
                        return -EBADMSG;
        }

        if (ret)
                *ret = q;

        return 0;
}