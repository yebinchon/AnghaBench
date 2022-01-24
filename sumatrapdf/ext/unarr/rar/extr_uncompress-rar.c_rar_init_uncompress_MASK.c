#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  filterstart; } ;
struct TYPE_5__ {int ppmd_escape; TYPE_1__ filters; } ;
struct TYPE_6__ {TYPE_2__ v3; } ;
struct ar_archive_rar_uncomp {int version; int start_new_table; TYPE_3__ state; int /*<<< orphan*/  lzss; } ;

/* Variables and functions */
 int /*<<< orphan*/  LZSS_WINDOW_SIZE ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar_archive_rar_uncomp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static bool FUNC3(struct ar_archive_rar_uncomp *uncomp, uint8_t version)
{
    /* per XADRARParser.m @handleForSolidStreamWithObject these versions are identical */
    if (version == 29 || version == 36)
        version = 3;
    else if (version == 20 || version == 26)
        version = 2;
    else {
        FUNC2("Unsupported compression version: %d", version);
        return false;
    }
    if (uncomp->version) {
        if (uncomp->version != version) {
            FUNC2("Compression version mismatch: %d != %d", version, uncomp->version);
            return false;
        }
        return true;
    }
    FUNC1(uncomp, 0, sizeof(*uncomp));
    uncomp->start_new_table = true;
    if (!FUNC0(&uncomp->lzss, LZSS_WINDOW_SIZE)) {
        FUNC2("OOM during decompression");
        return false;
    }
    if (version == 3) {
        uncomp->state.v3.ppmd_escape = 2;
        uncomp->state.v3.filters.filterstart = SIZE_MAX;
    }
    uncomp->version = version;
    return true;
}