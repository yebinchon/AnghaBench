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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(void) {
        char *n;

        n = FUNC2("LABEL=applé/jack");
        FUNC3(n);
        FUNC0(FUNC4(n, "/dev/disk/by-label/applé\\x2fjack"));
        FUNC1(n);

        n = FUNC2("PARTLABEL=pinkié pie");
        FUNC3(n);
        FUNC0(FUNC4(n, "/dev/disk/by-partlabel/pinkié\\x20pie"));
        FUNC1(n);

        n = FUNC2("UUID=037b9d94-148e-4ee4-8d38-67bfe15bb535");
        FUNC3(n);
        FUNC0(FUNC4(n, "/dev/disk/by-uuid/037b9d94-148e-4ee4-8d38-67bfe15bb535"));
        FUNC1(n);

        n = FUNC2("PARTUUID=037b9d94-148e-4ee4-8d38-67bfe15bb535");
        FUNC3(n);
        FUNC0(FUNC4(n, "/dev/disk/by-partuuid/037b9d94-148e-4ee4-8d38-67bfe15bb535"));
        FUNC1(n);

        n = FUNC2("PONIES=awesome");
        FUNC3(n);
        FUNC0(FUNC4(n, "PONIES=awesome"));
        FUNC1(n);

        n = FUNC2("/dev/xda1");
        FUNC3(n);
        FUNC0(FUNC4(n, "/dev/xda1"));
        FUNC1(n);
}