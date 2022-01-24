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
struct TYPE_3__ {int /*<<< orphan*/  MediaHandle; } ;
typedef  TYPE_1__* PEXT2_FILESYS ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FSCTL_UNLOCK_VOLUME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC3( PEXT2_FILESYS Ext2Sys )
{
    NTSTATUS Status;
    IO_STATUS_BLOCK IoSb;

    Status = FUNC2( Ext2Sys->MediaHandle,
                              NULL, NULL, NULL, &IoSb,
                              FSCTL_UNLOCK_VOLUME,
                              NULL, 0, NULL, 0 );

    if (!FUNC1(Status))
    {
        FUNC0("Mke2fs: Error when unlocking volume ...\n");
        goto errorout;
    }

errorout:

    return Status;
}