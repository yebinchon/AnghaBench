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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t MBRSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 

void
FUNC6(char *path, uint8_t *mbr)
{
    FILE *fp;
    size_t ret;

    fp = FUNC4(path, "rb");
    if (fp == NULL)
        FUNC1(1, "could not open MBR template file `%s'", path);
    FUNC0(fp);
    ret = FUNC5(mbr, 1, MBRSIZE, fp);
    if (FUNC3(fp) || ret != MBRSIZE)
        FUNC1(1, "error while reading MBR template file `%s'", path);
    FUNC2(fp);
}