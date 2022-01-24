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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int,char*,int,char*,int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void) {
        uint64_t offset = 0;
        FUNC0(FUNC1(NULL, "/this/file", 11, "Section", 22, "Size", 0, "4M", &offset, NULL) == 0);
        FUNC0(offset == 4 * 1024 * 1024);

        FUNC0(FUNC1(NULL, "/this/file", 11, "Section", 22, "Size", 0, "4.5M", &offset, NULL) == 0);
}