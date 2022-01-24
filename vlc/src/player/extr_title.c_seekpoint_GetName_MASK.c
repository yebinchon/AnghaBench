#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* psz_name; } ;
typedef  TYPE_1__ seekpoint_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3(seekpoint_t *seekpoint, int idx, int chapter_offset)
{
    if (seekpoint->psz_name && seekpoint->psz_name[0] != '\0' )
        return FUNC2(seekpoint->psz_name);

    char *dup;
    int ret = FUNC1(&dup, FUNC0("Chapter %i"), idx + chapter_offset);
    if (ret == -1)
        return NULL;
    return dup;
}