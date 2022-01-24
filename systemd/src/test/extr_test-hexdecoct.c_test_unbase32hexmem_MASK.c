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

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("", true, 0, "");

        FUNC0("CO======", true, 0, "f");
        FUNC0("CPNG====", true, 0, "fo");
        FUNC0("CPNMU===", true, 0, "foo");
        FUNC0("CPNMUOG=", true, 0, "foob");
        FUNC0("CPNMUOJ1", true, 0, "fooba");
        FUNC0("CPNMUOJ1E8======", true, 0, "foobar");

        FUNC0("A", true, -EINVAL, NULL);
        FUNC0("A=======", true, -EINVAL, NULL);
        FUNC0("AAA=====", true, -EINVAL, NULL);
        FUNC0("AAAAAA==", true, -EINVAL, NULL);
        FUNC0("AB======", true, -EINVAL, NULL);
        FUNC0("AAAB====", true, -EINVAL, NULL);
        FUNC0("AAAAB===", true, -EINVAL, NULL);
        FUNC0("AAAAAAB=", true, -EINVAL, NULL);

        FUNC0("XPNMUOJ1", true, -EINVAL, NULL);
        FUNC0("CXNMUOJ1", true, -EINVAL, NULL);
        FUNC0("CPXMUOJ1", true, -EINVAL, NULL);
        FUNC0("CPNXUOJ1", true, -EINVAL, NULL);
        FUNC0("CPNMXOJ1", true, -EINVAL, NULL);
        FUNC0("CPNMUXJ1", true, -EINVAL, NULL);
        FUNC0("CPNMUOX1", true, -EINVAL, NULL);
        FUNC0("CPNMUOJX", true, -EINVAL, NULL);

        FUNC0("", false, 0, "");
        FUNC0("CO", false, 0, "f");
        FUNC0("CPNG", false, 0, "fo");
        FUNC0("CPNMU", false, 0, "foo");
        FUNC0("CPNMUOG", false, 0, "foob");
        FUNC0("CPNMUOJ1", false, 0, "fooba");
        FUNC0("CPNMUOJ1E8", false, 0, "foobar");
        FUNC0("CPNMUOG=", false, -EINVAL, NULL);
        FUNC0("CPNMUOJ1E8======", false, -EINVAL, NULL);

        FUNC0("A", false, -EINVAL, NULL);
        FUNC0("AAA", false, -EINVAL, NULL);
        FUNC0("AAAAAA", false, -EINVAL, NULL);
        FUNC0("AB", false, -EINVAL, NULL);
        FUNC0("AAAB", false, -EINVAL, NULL);
        FUNC0("AAAAB", false, -EINVAL, NULL);
        FUNC0("AAAAAAB", false, -EINVAL, NULL);
}