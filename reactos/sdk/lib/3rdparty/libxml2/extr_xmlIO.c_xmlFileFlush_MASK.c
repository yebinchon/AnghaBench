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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2 (void * context) {
    int ret;

    if (context == NULL)
        return(-1);
    ret = ( FUNC0((FILE *) context) == EOF ) ? -1 : 0;
    if (ret < 0)
        FUNC1(0, "fflush()");
    return(ret);
}