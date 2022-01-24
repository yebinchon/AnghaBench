#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * opts; int /*<<< orphan*/  status; int /*<<< orphan*/  total_chunks; int /*<<< orphan*/  chunks_left; scalar_t__ shrinking; scalar_t__ removing; scalar_t__ paused; int /*<<< orphan*/  thread; } ;
struct TYPE_6__ {TYPE_1__ balance; } ;
typedef  TYPE_2__ device_extension ;
struct TYPE_7__ {int /*<<< orphan*/  system_opts; int /*<<< orphan*/  metadata_opts; int /*<<< orphan*/  data_opts; int /*<<< orphan*/  error; int /*<<< orphan*/  total_chunks; int /*<<< orphan*/  chunks_left; int /*<<< orphan*/  status; } ;
typedef  TYPE_3__ btrfs_query_balance ;
typedef  int /*<<< orphan*/  btrfs_balance_opts ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 size_t BALANCE_OPTS_DATA ; 
 size_t BALANCE_OPTS_METADATA ; 
 size_t BALANCE_OPTS_SYSTEM ; 
 int /*<<< orphan*/  BTRFS_BALANCE_ERROR ; 
 int /*<<< orphan*/  BTRFS_BALANCE_PAUSED ; 
 int /*<<< orphan*/  BTRFS_BALANCE_REMOVAL ; 
 int /*<<< orphan*/  BTRFS_BALANCE_RUNNING ; 
 int /*<<< orphan*/  BTRFS_BALANCE_SHRINKING ; 
 int /*<<< orphan*/  BTRFS_BALANCE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS FUNC2(device_extension* Vcb, void* data, ULONG length) {
    btrfs_query_balance* bqb = (btrfs_query_balance*)data;

    if (length < sizeof(btrfs_query_balance) || !data)
        return STATUS_INVALID_PARAMETER;

    if (!Vcb->balance.thread) {
        bqb->status = BTRFS_BALANCE_STOPPED;

        if (!FUNC0(Vcb->balance.status)) {
            bqb->status |= BTRFS_BALANCE_ERROR;
            bqb->error = Vcb->balance.status;
        }

        return STATUS_SUCCESS;
    }

    bqb->status = Vcb->balance.paused ? BTRFS_BALANCE_PAUSED : BTRFS_BALANCE_RUNNING;

    if (Vcb->balance.removing)
        bqb->status |= BTRFS_BALANCE_REMOVAL;

    if (Vcb->balance.shrinking)
        bqb->status |= BTRFS_BALANCE_SHRINKING;

    if (!FUNC0(Vcb->balance.status))
        bqb->status |= BTRFS_BALANCE_ERROR;

    bqb->chunks_left = Vcb->balance.chunks_left;
    bqb->total_chunks = Vcb->balance.total_chunks;
    bqb->error = Vcb->balance.status;
    FUNC1(&bqb->data_opts, &Vcb->balance.opts[BALANCE_OPTS_DATA], sizeof(btrfs_balance_opts));
    FUNC1(&bqb->metadata_opts, &Vcb->balance.opts[BALANCE_OPTS_METADATA], sizeof(btrfs_balance_opts));
    FUNC1(&bqb->system_opts, &Vcb->balance.opts[BALANCE_OPTS_SYSTEM], sizeof(btrfs_balance_opts));

    return STATUS_SUCCESS;
}