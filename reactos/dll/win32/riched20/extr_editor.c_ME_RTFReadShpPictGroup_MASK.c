#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ rtfClass; } ;
typedef  TYPE_1__ RTF_Info ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  rtfBeginGroup ; 
 scalar_t__ rtfEOF ; 
 int /*<<< orphan*/  rtfEndGroup ; 
 int /*<<< orphan*/  rtfGroup ; 

__attribute__((used)) static void FUNC3( RTF_Info *info )
{
    int level = 1;

    for (;;)
    {
        FUNC1 (info);

        if (info->rtfClass == rtfEOF) return;
        if (FUNC0( info, rtfGroup, rtfEndGroup ))
        {
            if (--level == 0) break;
        }
        else if (FUNC0( info, rtfGroup, rtfBeginGroup ))
        {
            level++;
        }
        else
        {
            FUNC2( info );
            if (FUNC0( info, rtfGroup, rtfEndGroup ))
                level--;
        }
    }

    FUNC2( info ); /* feed "}" back to router */
    return;
}