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
struct TYPE_3__ {int /*<<< orphan*/  processing; int /*<<< orphan*/  old_path; } ;
typedef  TYPE_1__ RenameInfo ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 

__attribute__((used)) inline static void
FUNC1 (RenameInfo *info, const char *path)
{
    info->old_path = FUNC0(path);
    info->processing = TRUE;
}