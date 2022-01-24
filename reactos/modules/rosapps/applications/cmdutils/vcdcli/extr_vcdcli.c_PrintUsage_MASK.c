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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC2(int type)
{
    if (type == 0)
    {
        FUNC1(stdout, FUNC0("vcdcli usage:\n"));
        FUNC1(stdout, FUNC0("\tlist [/a]: list all the virtual drives\n"));
        FUNC1(stdout, FUNC0("\tcreate: create a virtual drive\n"));
        FUNC1(stdout, FUNC0("\tmount X path: mount path image on X virtual drive\n"));
        FUNC1(stdout, FUNC0("\tremount X: remount image on X virtual drive\n"));
        FUNC1(stdout, FUNC0("\tremount X: remount image on X virtual drive\n"));
        FUNC1(stdout, FUNC0("\teject X: eject image on X virtual drive\n"));
        FUNC1(stdout, FUNC0("\tremove X: remove virtual drive X\n"));
    }
    else if (type == 1)
    {
        FUNC1(stdout, FUNC0("mount usage:\n"));
        FUNC1(stdout, FUNC0("\tmount <drive letter> <path.iso> [/u] [/j] [/p]\n"));
        FUNC1(stdout, FUNC0("\tMount the ISO image given in <path.iso> on the previously created virtual drive <drive letter>\n"));
        FUNC1(stdout, FUNC0("\t\tDo not use colon for drive letter\n"));
        FUNC1(stdout, FUNC0("\t\tUse /u to make UDF volumes not appear as such\n"));
        FUNC1(stdout, FUNC0("\t\tUse /j to make Joliet volumes not appear as such\n"));
        FUNC1(stdout, FUNC0("\t\tUse /p to make the mounting persistent\n"));
    }
    else if (type == 2)
    {
        FUNC1(stdout, FUNC0("remount usage:\n"));
        FUNC1(stdout, FUNC0("\tremount <drive letter>\n"));
        FUNC1(stdout, FUNC0("\tRemount the ISO image that was previously mounted on the virtual drive <drive letter>\n"));
        FUNC1(stdout, FUNC0("\t\tDo not use colon for drive letter\n"));
    }
    else if (type == 3)
    {
        FUNC1(stdout, FUNC0("eject usage:\n"));
        FUNC1(stdout, FUNC0("\teject <drive letter>\n"));
        FUNC1(stdout, FUNC0("\tEjects the ISO image that is mounted on the virtual drive <drive letter>\n"));
        FUNC1(stdout, FUNC0("\t\tDo not use colon for drive letter\n"));
    }
    else if (type == 4)
    {
        FUNC1(stdout, FUNC0("remove usage:\n"));
        FUNC1(stdout, FUNC0("\tremove <drive letter>\n"));
        FUNC1(stdout, FUNC0("\tRemoves the virtual drive <drive letter> making it no longer usable\n"));
        FUNC1(stdout, FUNC0("\t\tDo not use colon for drive letter\n"));
    }
}