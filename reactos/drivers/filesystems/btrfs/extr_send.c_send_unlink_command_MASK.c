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
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  send_dir ;
struct TYPE_6__ {size_t datalen; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ send_context ;
typedef  size_t ULONG ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_SEND_CMD_UNLINK ; 
 int /*<<< orphan*/  BTRFS_SEND_TLV_PATH ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,char*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 

__attribute__((used)) static NTSTATUS FUNC5(send_context* context, send_dir* parent, uint16_t namelen, char* name) {
    ULONG pos = context->datalen;
    uint16_t pathlen;

    FUNC3(context, BTRFS_SEND_CMD_UNLINK);

    pathlen = FUNC1(parent, namelen);
    FUNC2(context, BTRFS_SEND_TLV_PATH, NULL, pathlen);

    FUNC0((char*)&context->data[context->datalen - pathlen], parent, name, namelen);

    FUNC4(context, pos);

    return STATUS_SUCCESS;
}