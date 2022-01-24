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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int*) ; 

__attribute__((used)) static void FUNC2(void) {
        uint64_t bytes;

        FUNC0(FUNC1("", 1024, &bytes) == -EINVAL);

        FUNC0(FUNC1("111", 1024, &bytes) == 0);
        FUNC0(bytes == 111);

        FUNC0(FUNC1("111.4", 1024, &bytes) == 0);
        FUNC0(bytes == 111);

        FUNC0(FUNC1(" 112 B", 1024, &bytes) == 0);
        FUNC0(bytes == 112);

        FUNC0(FUNC1(" 112.6 B", 1024, &bytes) == 0);
        FUNC0(bytes == 112);

        FUNC0(FUNC1("3.5 K", 1024, &bytes) == 0);
        FUNC0(bytes == 3*1024 + 512);

        FUNC0(FUNC1("3. K", 1024, &bytes) == 0);
        FUNC0(bytes == 3*1024);

        FUNC0(FUNC1("3.0 K", 1024, &bytes) == 0);
        FUNC0(bytes == 3*1024);

        FUNC0(FUNC1("3. 0 K", 1024, &bytes) == -EINVAL);

        FUNC0(FUNC1(" 4 M 11.5K", 1024, &bytes) == 0);
        FUNC0(bytes == 4*1024*1024 + 11 * 1024 + 512);

        FUNC0(FUNC1("3B3.5G", 1024, &bytes) == -EINVAL);

        FUNC0(FUNC1("3.5G3B", 1024, &bytes) == 0);
        FUNC0(bytes == 3ULL*1024*1024*1024 + 512*1024*1024 + 3);

        FUNC0(FUNC1("3.5G 4B", 1024, &bytes) == 0);
        FUNC0(bytes == 3ULL*1024*1024*1024 + 512*1024*1024 + 4);

        FUNC0(FUNC1("3B3G4T", 1024, &bytes) == -EINVAL);

        FUNC0(FUNC1("4T3G3B", 1024, &bytes) == 0);
        FUNC0(bytes == (4ULL*1024 + 3)*1024*1024*1024 + 3);

        FUNC0(FUNC1(" 4 T 3 G 3 B", 1024, &bytes) == 0);
        FUNC0(bytes == (4ULL*1024 + 3)*1024*1024*1024 + 3);

        FUNC0(FUNC1("12P", 1024, &bytes) == 0);
        FUNC0(bytes == 12ULL * 1024*1024*1024*1024*1024);

        FUNC0(FUNC1("12P12P", 1024, &bytes) == -EINVAL);

        FUNC0(FUNC1("3E 2P", 1024, &bytes) == 0);
        FUNC0(bytes == (3 * 1024 + 2ULL) * 1024*1024*1024*1024*1024);

        FUNC0(FUNC1("12X", 1024, &bytes) == -EINVAL);

        FUNC0(FUNC1("12.5X", 1024, &bytes) == -EINVAL);

        FUNC0(FUNC1("12.5e3", 1024, &bytes) == -EINVAL);

        FUNC0(FUNC1("1024E", 1024, &bytes) == -ERANGE);
        FUNC0(FUNC1("-1", 1024, &bytes) == -ERANGE);
        FUNC0(FUNC1("-1024E", 1024, &bytes) == -ERANGE);

        FUNC0(FUNC1("-1024P", 1024, &bytes) == -ERANGE);

        FUNC0(FUNC1("-10B 20K", 1024, &bytes) == -ERANGE);
}