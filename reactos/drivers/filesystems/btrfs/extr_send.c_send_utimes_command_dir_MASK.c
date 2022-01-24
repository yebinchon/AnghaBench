#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ send_dir ;
struct TYPE_10__ {int /*<<< orphan*/  datalen; } ;
typedef  TYPE_2__ send_context ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  BTRFS_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_SEND_CMD_UTIMES ; 
 int /*<<< orphan*/  BTRFS_SEND_TLV_ATIME ; 
 int /*<<< orphan*/  BTRFS_SEND_TLV_CTIME ; 
 int /*<<< orphan*/  BTRFS_SEND_TLV_MTIME ; 
 int /*<<< orphan*/  BTRFS_SEND_TLV_PATH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(send_context* context, send_dir* sd, BTRFS_TIME* atime, BTRFS_TIME* mtime, BTRFS_TIME* ctime) {
    ULONG pos = context->datalen;

    FUNC2(context, BTRFS_SEND_CMD_UTIMES);

    FUNC1(context, BTRFS_SEND_TLV_PATH, sd->parent, sd->name, sd->namelen);

    FUNC0(context, BTRFS_SEND_TLV_ATIME, atime, sizeof(BTRFS_TIME));
    FUNC0(context, BTRFS_SEND_TLV_MTIME, mtime, sizeof(BTRFS_TIME));
    FUNC0(context, BTRFS_SEND_TLV_CTIME, ctime, sizeof(BTRFS_TIME));

    FUNC3(context, pos);
}