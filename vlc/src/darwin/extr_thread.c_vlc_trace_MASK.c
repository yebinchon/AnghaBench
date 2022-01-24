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
typedef  int /*<<< orphan*/  stack ;

/* Variables and functions */
 int FUNC0 (void**,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC5 (const char *fn, const char *file, unsigned line)
{
     FUNC3 (stderr, "at %s:%u in %s\n", file, line, fn);
     FUNC2 (stderr); /* needed before switch to low-level I/O */
     void *stack[20];
     int len = FUNC0 (stack, sizeof (stack) / sizeof (stack[0]));
     FUNC1 (stack, len, 2);
     FUNC4 (2);
}