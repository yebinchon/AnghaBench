
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * opts; int status; int total_chunks; int chunks_left; scalar_t__ shrinking; scalar_t__ removing; scalar_t__ paused; int thread; } ;
struct TYPE_6__ {TYPE_1__ balance; } ;
typedef TYPE_2__ device_extension ;
struct TYPE_7__ {int system_opts; int metadata_opts; int data_opts; int error; int total_chunks; int chunks_left; int status; } ;
typedef TYPE_3__ btrfs_query_balance ;
typedef int btrfs_balance_opts ;
typedef int ULONG ;
typedef int NTSTATUS ;


 size_t BALANCE_OPTS_DATA ;
 size_t BALANCE_OPTS_METADATA ;
 size_t BALANCE_OPTS_SYSTEM ;
 int BTRFS_BALANCE_ERROR ;
 int BTRFS_BALANCE_PAUSED ;
 int BTRFS_BALANCE_REMOVAL ;
 int BTRFS_BALANCE_RUNNING ;
 int BTRFS_BALANCE_SHRINKING ;
 int BTRFS_BALANCE_STOPPED ;
 int NT_SUCCESS (int ) ;
 int RtlCopyMemory (int *,int *,int) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;

NTSTATUS query_balance(device_extension* Vcb, void* data, ULONG length) {
    btrfs_query_balance* bqb = (btrfs_query_balance*)data;

    if (length < sizeof(btrfs_query_balance) || !data)
        return STATUS_INVALID_PARAMETER;

    if (!Vcb->balance.thread) {
        bqb->status = BTRFS_BALANCE_STOPPED;

        if (!NT_SUCCESS(Vcb->balance.status)) {
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

    if (!NT_SUCCESS(Vcb->balance.status))
        bqb->status |= BTRFS_BALANCE_ERROR;

    bqb->chunks_left = Vcb->balance.chunks_left;
    bqb->total_chunks = Vcb->balance.total_chunks;
    bqb->error = Vcb->balance.status;
    RtlCopyMemory(&bqb->data_opts, &Vcb->balance.opts[BALANCE_OPTS_DATA], sizeof(btrfs_balance_opts));
    RtlCopyMemory(&bqb->metadata_opts, &Vcb->balance.opts[BALANCE_OPTS_METADATA], sizeof(btrfs_balance_opts));
    RtlCopyMemory(&bqb->system_opts, &Vcb->balance.opts[BALANCE_OPTS_SYSTEM], sizeof(btrfs_balance_opts));

    return STATUS_SUCCESS;
}
