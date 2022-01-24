#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  fat; } ;
struct TYPE_8__ {int value; } ;
typedef  TYPE_1__ FAT_ENTRY ;
typedef  TYPE_2__ DOS_FS ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,TYPE_2__*) ; 

uint32_t FUNC4(DOS_FS * fs, uint32_t cluster)
{
    uint32_t value;
    FAT_ENTRY curEntry;

    FUNC3(&curEntry, fs->fat, cluster, fs);

    value = curEntry.value;
    if (FUNC0(fs, value))
	FUNC2("Internal error: next_cluster on bad cluster");
    return FUNC1(fs, value) ? -1 : value;
}