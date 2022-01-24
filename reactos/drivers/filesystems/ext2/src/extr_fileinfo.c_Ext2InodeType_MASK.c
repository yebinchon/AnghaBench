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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  PEXT2_MCB ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_FT_DIR ; 
 int /*<<< orphan*/  EXT2_FT_REG_FILE ; 
 int /*<<< orphan*/  EXT2_FT_SYMLINK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

ULONG
FUNC2(PEXT2_MCB Mcb)
{
    if (FUNC1(Mcb)) {
        return EXT2_FT_SYMLINK;
    }

    if (FUNC0(Mcb)) {
        return EXT2_FT_DIR;
    }

    return EXT2_FT_REG_FILE;
}