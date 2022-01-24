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
 char G_DIR_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 

void
FUNC3 (char *path, const char *base, const char *obj_id)
{
    int len;

    len = FUNC2(base);
    FUNC0(path, base, len);
    path[len] = G_DIR_SEPARATOR;
    path[len+1] = obj_id[0];
    path[len+2] = obj_id[1];
    path[len+3] = G_DIR_SEPARATOR;
    FUNC1(path+len+4, obj_id+2);
}