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
typedef  scalar_t__ usec_t ;
typedef  int /*<<< orphan*/  sd_device ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENODATA ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,char const**) ; 
 int FUNC12 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*,char const**) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC15 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC17 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

__attribute__((used)) static void FUNC20(sd_device *d) {
        const char *syspath, *subsystem, *val;
        dev_t devnum;
        usec_t usec;
        int i, r;

        FUNC1(FUNC16(d, &syspath) >= 0);

        r = FUNC12(d, &subsystem);
        FUNC1(r >= 0 || r == -ENOENT);

        r = FUNC7(d, &val);
        FUNC1(r >= 0 || r == -ENOENT);

        r = FUNC5(d, &devnum);
        FUNC1((r >= 0 && FUNC3(devnum) > 0) || r == -ENOENT);

        r = FUNC9(d, &i);
        FUNC1((r >= 0 && i > 0) || r == -ENOENT);

        r = FUNC8(d, &val);
        FUNC1(r >= 0 || r == -ENOENT);

        FUNC1(FUNC6(d, &val) >= 0);

        r = FUNC4(d, &val);
        FUNC1(r >= 0 || r == -ENOENT);

        FUNC1(FUNC14(d, &val) >= 0);

        r = FUNC15(d, &val);
        FUNC1(r >= 0 || r == -ENOENT);

        i = FUNC10(d);
        FUNC1(i >= 0);
        if (i > 0) {
                r = FUNC17(d, &usec);
                FUNC1((r >= 0 && usec > 0) || r == -ENODATA);
        }

        r = FUNC13(d, "name_assign_type", &val);
        FUNC1(r >= 0 || FUNC0(r, -ENOENT, -EINVAL));

        r = FUNC11(d, "ID_NET_DRIVER", &val);
        FUNC1(r >= 0 || r == -ENOENT);

        FUNC2("syspath:%s subsystem:%s initialized:%s", syspath, FUNC18(subsystem), FUNC19(i));
}