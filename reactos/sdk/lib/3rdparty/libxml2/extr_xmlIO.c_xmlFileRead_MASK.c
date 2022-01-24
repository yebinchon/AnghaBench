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
 int FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int
FUNC2 (void * context, char * buffer, int len) {
    int ret;
    if ((context == NULL) || (buffer == NULL))
        return(-1);
    ret = FUNC0(&buffer[0], 1,  len, (FILE *) context);
    if (ret < 0) FUNC1(0, "fread()");
    return(ret);
}