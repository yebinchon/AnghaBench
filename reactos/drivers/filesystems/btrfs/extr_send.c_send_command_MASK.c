#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {size_t datalen; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ send_context ;
struct TYPE_5__ {scalar_t__ csum; int /*<<< orphan*/  cmd; } ;
typedef  TYPE_2__ btrfs_send_command ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(send_context* context, uint16_t cmd) {
    btrfs_send_command* bsc = (btrfs_send_command*)&context->data[context->datalen];

    bsc->cmd = cmd;
    bsc->csum = 0;

    context->datalen += sizeof(btrfs_send_command);
}