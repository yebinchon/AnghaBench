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
typedef  int uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  datalen; } ;
typedef  TYPE_1__ send_context ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  char BTRFS_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_SEND_CMD_UTIMES ; 
 int /*<<< orphan*/  BTRFS_SEND_TLV_ATIME ; 
 int /*<<< orphan*/  BTRFS_SEND_TLV_CTIME ; 
 int /*<<< orphan*/  BTRFS_SEND_TLV_MTIME ; 
 int /*<<< orphan*/  BTRFS_SEND_TLV_PATH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(send_context* context, char* path, BTRFS_TIME* atime, BTRFS_TIME* mtime, BTRFS_TIME* ctime) {
    ULONG pos = context->datalen;

    FUNC1(context, BTRFS_SEND_CMD_UTIMES);

    FUNC0(context, BTRFS_SEND_TLV_PATH, path, path ? (uint16_t)FUNC3(path) : 0);
    FUNC0(context, BTRFS_SEND_TLV_ATIME, atime, sizeof(BTRFS_TIME));
    FUNC0(context, BTRFS_SEND_TLV_MTIME, mtime, sizeof(BTRFS_TIME));
    FUNC0(context, BTRFS_SEND_TLV_CTIME, ctime, sizeof(BTRFS_TIME));

    FUNC2(context, pos);
}