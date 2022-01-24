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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    const char const_path[] = "test";
    char path[] = "short//path\\file.txt";

    FUNC0(path);
    FUNC1(!FUNC2(path, "file.txt"), "path = %s\n", path);

    /* following test should not crash */
    /* LavView 2013 depends on that behaviour */
    FUNC0((char*)const_path);
}