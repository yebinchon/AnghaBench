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
 char* FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC3(char *PathChop, char *FilePath)
{
    int pclen = FUNC1(PathChop);
    if (!FUNC2(FilePath, PathChop, pclen))
    {
        return FUNC0(FilePath+pclen);
    }
    else
    {
        return FUNC0(FilePath);
    }
}