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
typedef  int /*<<< orphan*/  FDSet ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SD_LISTEN_FDS_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(FDSet **_s, bool unset) {
        int n, fd, r;
        FDSet *s;

        FUNC1(_s);

        /* Creates an fdset and fills in all passed file descriptors */

        s = FUNC2();
        if (!s) {
                r = -ENOMEM;
                goto fail;
        }

        n = FUNC4(unset);
        for (fd = SD_LISTEN_FDS_START; fd < SD_LISTEN_FDS_START + n; fd ++) {
                r = FUNC3(s, fd);
                if (r < 0)
                        goto fail;
        }

        *_s = s;
        return 0;

fail:
        if (s)
                FUNC5(FUNC0(s));

        return r;
}