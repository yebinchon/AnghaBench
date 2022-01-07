
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_20__ {TYPE_2__* item; } ;
typedef TYPE_4__ traverse_ptr ;
struct TYPE_19__ {int sector_size; } ;
struct TYPE_21__ {int checksum_root; TYPE_3__ superblock; } ;
typedef TYPE_5__ device_extension ;
typedef scalar_t__ ULONG ;
struct TYPE_22__ {int offset; void* obj_type; void* obj_id; } ;
struct TYPE_17__ {int offset; } ;
struct TYPE_18__ {int size; scalar_t__* data; TYPE_1__ key; } ;
typedef int RTL_BITMAP ;
typedef int PIRP ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_6__ KEY ;


 int ALLOC_TAG ;
 int ERR (char*,...) ;
 void* EXTENT_CSUM_ID ;
 scalar_t__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (scalar_t__*) ;
 int MAX_CSUM_SIZE ;
 int NT_SUCCESS (scalar_t__) ;
 int PagedPool ;
 int RtlClearBits (int *,scalar_t__,scalar_t__) ;
 int RtlCopyMemory (scalar_t__*,scalar_t__*,int) ;
 scalar_t__ RtlFindFirstRunClear (int *,scalar_t__*) ;
 scalar_t__ RtlFindNextForwardRunClear (int *,scalar_t__,scalar_t__*) ;
 int RtlInitializeBitMap (int *,scalar_t__*,scalar_t__) ;
 int RtlSetAllBits (int *) ;
 int RtlSetBits (int *,scalar_t__,scalar_t__) ;
 scalar_t__ STATUS_NOT_FOUND ;
 int TRACE (char*,...) ;
 void* TYPE_EXTENT_CSUM ;
 int UInt32x32To64 (scalar_t__,int) ;
 scalar_t__ delete_tree_item (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ find_item (TYPE_5__*,int ,TYPE_4__*,TYPE_6__*,int,int ) ;
 scalar_t__ find_next_item (TYPE_5__*,TYPE_4__*,TYPE_4__*,int,int ) ;
 scalar_t__ insert_tree_item (TYPE_5__*,int ,void*,void*,int,scalar_t__*,int,int *,int ) ;
 scalar_t__ min (int,int) ;

void add_checksum_entry(device_extension* Vcb, uint64_t address, ULONG length, uint32_t* csum, PIRP Irp) {
    KEY searchkey;
    traverse_ptr tp, next_tp;
    NTSTATUS Status;
    uint64_t startaddr, endaddr;
    ULONG len;
    uint32_t* checksums;
    RTL_BITMAP bmp;
    ULONG* bmparr;
    ULONG runlength, index;

    TRACE("(%p, %I64x, %x, %p, %p)\n", Vcb, address, length, csum, Irp);

    searchkey.obj_id = EXTENT_CSUM_ID;
    searchkey.obj_type = TYPE_EXTENT_CSUM;
    searchkey.offset = address;



    Status = find_item(Vcb, Vcb->checksum_root, &tp, &searchkey, 0, Irp);
    if (Status == STATUS_NOT_FOUND) {
        if (csum) {
            ULONG length2 = length;
            uint64_t off = address;
            uint32_t* data = csum;

            do {
                uint16_t il = (uint16_t)min(length2, MAX_CSUM_SIZE / sizeof(uint32_t));

                checksums = ExAllocatePoolWithTag(PagedPool, il * sizeof(uint32_t), ALLOC_TAG);
                if (!checksums) {
                    ERR("out of memory\n");
                    return;
                }

                RtlCopyMemory(checksums, data, il * sizeof(uint32_t));

                Status = insert_tree_item(Vcb, Vcb->checksum_root, EXTENT_CSUM_ID, TYPE_EXTENT_CSUM, off, checksums,
                                          il * sizeof(uint32_t), ((void*)0), Irp);
                if (!NT_SUCCESS(Status)) {
                    ERR("insert_tree_item returned %08x\n", Status);
                    ExFreePool(checksums);
                    return;
                }

                length2 -= il;

                if (length2 > 0) {
                    off += il * Vcb->superblock.sector_size;
                    data += il;
                }
            } while (length2 > 0);
        }
    } else if (!NT_SUCCESS(Status)) {
        ERR("find_item returned %08x\n", Status);
        return;
    } else {
        uint32_t tplen;



        if (tp.item->key.offset < address && tp.item->key.offset + (tp.item->size * Vcb->superblock.sector_size / sizeof(uint32_t)) >= address)
            startaddr = tp.item->key.offset;
        else
            startaddr = address;

        searchkey.obj_id = EXTENT_CSUM_ID;
        searchkey.obj_type = TYPE_EXTENT_CSUM;
        searchkey.offset = address + (length * Vcb->superblock.sector_size);

        Status = find_item(Vcb, Vcb->checksum_root, &tp, &searchkey, 0, Irp);
        if (!NT_SUCCESS(Status)) {
            ERR("find_item returned %08x\n", Status);
            return;
        }

        tplen = tp.item->size / sizeof(uint32_t);

        if (tp.item->key.offset + (tplen * Vcb->superblock.sector_size) >= address + (length * Vcb->superblock.sector_size))
            endaddr = tp.item->key.offset + (tplen * Vcb->superblock.sector_size);
        else
            endaddr = address + (length * Vcb->superblock.sector_size);

        TRACE("cs starts at %I64x (%x sectors)\n", address, length);
        TRACE("startaddr = %I64x\n", startaddr);
        TRACE("endaddr = %I64x\n", endaddr);

        len = (ULONG)((endaddr - startaddr) / Vcb->superblock.sector_size);

        checksums = ExAllocatePoolWithTag(PagedPool, sizeof(uint32_t) * len, ALLOC_TAG);
        if (!checksums) {
            ERR("out of memory\n");
            return;
        }

        bmparr = ExAllocatePoolWithTag(PagedPool, sizeof(ULONG) * ((len/8)+1), ALLOC_TAG);
        if (!bmparr) {
            ERR("out of memory\n");
            ExFreePool(checksums);
            return;
        }

        RtlInitializeBitMap(&bmp, bmparr, len);
        RtlSetAllBits(&bmp);

        searchkey.obj_id = EXTENT_CSUM_ID;
        searchkey.obj_type = TYPE_EXTENT_CSUM;
        searchkey.offset = address;

        Status = find_item(Vcb, Vcb->checksum_root, &tp, &searchkey, 0, Irp);
        if (!NT_SUCCESS(Status)) {
            ERR("find_item returned %08x\n", Status);
            ExFreePool(checksums);
            ExFreePool(bmparr);
            return;
        }



        while (tp.item->key.offset < endaddr) {
            if (tp.item->key.offset >= startaddr) {
                if (tp.item->size > 0) {
                    ULONG itemlen = (ULONG)min((len - (tp.item->key.offset - startaddr) / Vcb->superblock.sector_size) * sizeof(uint32_t), tp.item->size);

                    RtlCopyMemory(&checksums[(tp.item->key.offset - startaddr) / Vcb->superblock.sector_size], tp.item->data, itemlen);
                    RtlClearBits(&bmp, (ULONG)((tp.item->key.offset - startaddr) / Vcb->superblock.sector_size), itemlen / sizeof(uint32_t));
                }

                Status = delete_tree_item(Vcb, &tp);
                if (!NT_SUCCESS(Status)) {
                    ERR("delete_tree_item returned %08x\n", Status);
                    ExFreePool(checksums);
                    ExFreePool(bmparr);
                    return;
                }
            }

            if (find_next_item(Vcb, &tp, &next_tp, 0, Irp)) {
                tp = next_tp;
            } else
                break;
        }

        if (!csum) {
            RtlSetBits(&bmp, (ULONG)((address - startaddr) / Vcb->superblock.sector_size), length);
        } else {
            RtlCopyMemory(&checksums[(address - startaddr) / Vcb->superblock.sector_size], csum, length * sizeof(uint32_t));
            RtlClearBits(&bmp, (ULONG)((address - startaddr) / Vcb->superblock.sector_size), length);
        }

        runlength = RtlFindFirstRunClear(&bmp, &index);

        while (runlength != 0) {
            if (index >= len)
                break;

            if (index + runlength >= len) {
                runlength = len - index;

                if (runlength == 0)
                    break;
            }

            do {
                uint16_t rl;
                uint64_t off;
                uint32_t* data;

                if (runlength * sizeof(uint32_t) > MAX_CSUM_SIZE)
                    rl = MAX_CSUM_SIZE / sizeof(uint32_t);
                else
                    rl = (uint16_t)runlength;

                data = ExAllocatePoolWithTag(PagedPool, sizeof(uint32_t) * rl, ALLOC_TAG);
                if (!data) {
                    ERR("out of memory\n");
                    ExFreePool(bmparr);
                    ExFreePool(checksums);
                    return;
                }

                RtlCopyMemory(data, &checksums[index], sizeof(uint32_t) * rl);

                off = startaddr + UInt32x32To64(index, Vcb->superblock.sector_size);

                Status = insert_tree_item(Vcb, Vcb->checksum_root, EXTENT_CSUM_ID, TYPE_EXTENT_CSUM, off, data, sizeof(uint32_t) * rl, ((void*)0), Irp);
                if (!NT_SUCCESS(Status)) {
                    ERR("insert_tree_item returned %08x\n", Status);
                    ExFreePool(data);
                    ExFreePool(bmparr);
                    ExFreePool(checksums);
                    return;
                }

                runlength -= rl;
                index += rl;
            } while (runlength > 0);

            runlength = RtlFindNextForwardRunClear(&bmp, index, &index);
        }

        ExFreePool(bmparr);
        ExFreePool(checksums);
    }
}
