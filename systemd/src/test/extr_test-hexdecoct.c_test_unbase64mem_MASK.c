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
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void) {

        FUNC0("", "", 0);
        FUNC0("Zg==", "f", 0);
        FUNC0("Zm8=", "fo", 0);
        FUNC0("Zm9v", "foo", 0);
        FUNC0("Zm9vYg==", "foob", 0);
        FUNC0("Zm9vYmE=", "fooba", 0);
        FUNC0("Zm9vYmFy", "foobar", 0);

        FUNC0(" ", "", 0);
        FUNC0(" \n\r ", "", 0);
        FUNC0("    Zg\n==       ", "f", 0);
        FUNC0(" Zm 8=\r", "fo", 0);
        FUNC0("  Zm9\n\r\r\nv   ", "foo", 0);
        FUNC0(" Z m9vYg==\n\r", "foob", 0);
        FUNC0(" Zm 9vYmE=   ", "fooba", 0);
        FUNC0("   Z m9v    YmFy   ", "foobar", 0);

        FUNC0("A", NULL, -EPIPE);
        FUNC0("A====", NULL, -EINVAL);
        FUNC0("AAB==", NULL, -EINVAL);
        FUNC0(" A A A B = ", NULL, -EINVAL);
        FUNC0(" Z m 8 = q u u x ", NULL, -ENAMETOOLONG);
}