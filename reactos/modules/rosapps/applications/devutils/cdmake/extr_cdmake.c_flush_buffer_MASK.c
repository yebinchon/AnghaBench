#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sector; scalar_t__ count; int /*<<< orphan*/  file; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int SECTOR_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ cd ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ show_progress ; 
 int total_sectors ; 

__attribute__((used)) static void FUNC4(void)
{
    if (FUNC2(cd.buffer, cd.count, 1, cd.file) < 1)
        FUNC1("File write error");
    cd.count = 0;
    if (show_progress)
    {
        FUNC3("\r%s ",
            FUNC0((total_sectors - cd.sector) * SECTOR_SIZE, TRUE));
    }
}