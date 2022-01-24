#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct TYPE_20__ {TYPE_2__* item; } ;
typedef  TYPE_4__ traverse_ptr ;
struct TYPE_19__ {int sector_size; } ;
struct TYPE_21__ {int /*<<< orphan*/  checksum_root; TYPE_3__ superblock; } ;
typedef  TYPE_5__ device_extension ;
typedef  scalar_t__ ULONG ;
struct TYPE_22__ {int offset; void* obj_type; void* obj_id; } ;
struct TYPE_17__ {int offset; } ;
struct TYPE_18__ {int size; scalar_t__* data; TYPE_1__ key; } ;
typedef  int /*<<< orphan*/  RTL_BITMAP ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_6__ KEY ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* EXTENT_CSUM_ID ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int MAX_CSUM_SIZE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ STATUS_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 void* TYPE_EXTENT_CSUM ; 
 int FUNC12 (scalar_t__,int) ; 
 scalar_t__ FUNC13 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*,TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_5__*,TYPE_4__*,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_5__*,int /*<<< orphan*/ ,void*,void*,int,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int,int) ; 

void FUNC18(device_extension* Vcb, uint64_t address, ULONG length, uint32_t* csum, PIRP Irp) {
    KEY searchkey;
    traverse_ptr tp, next_tp;
    NTSTATUS Status;
    uint64_t startaddr, endaddr;
    ULONG len;
    uint32_t* checksums;
    RTL_BITMAP bmp;
    ULONG* bmparr;
    ULONG runlength, index;

    FUNC11("(%p, %I64x, %x, %p, %p)\n", Vcb, address, length, csum, Irp);

    searchkey.obj_id = EXTENT_CSUM_ID;
    searchkey.obj_type = TYPE_EXTENT_CSUM;
    searchkey.offset = address;

    // FIXME - create checksum_root if it doesn't exist at all

    Status = FUNC14(Vcb, Vcb->checksum_root, &tp, &searchkey, false, Irp);
    if (Status == STATUS_NOT_FOUND) { // tree is completely empty
        if (csum) { // not deleted
            ULONG length2 = length;
            uint64_t off = address;
            uint32_t* data = csum;

            do {
                uint16_t il = (uint16_t)FUNC17(length2, MAX_CSUM_SIZE / sizeof(uint32_t));

                checksums = FUNC1(PagedPool, il * sizeof(uint32_t), ALLOC_TAG);
                if (!checksums) {
                    FUNC0("out of memory\n");
                    return;
                }

                FUNC5(checksums, data, il * sizeof(uint32_t));

                Status = FUNC16(Vcb, Vcb->checksum_root, EXTENT_CSUM_ID, TYPE_EXTENT_CSUM, off, checksums,
                                          il * sizeof(uint32_t), NULL, Irp);
                if (!FUNC3(Status)) {
                    FUNC0("insert_tree_item returned %08x\n", Status);
                    FUNC2(checksums);
                    return;
                }

                length2 -= il;

                if (length2 > 0) {
                    off += il * Vcb->superblock.sector_size;
                    data += il;
                }
            } while (length2 > 0);
        }
    } else if (!FUNC3(Status)) {
        FUNC0("find_item returned %08x\n", Status);
        return;
    } else {
        uint32_t tplen;

        // FIXME - check entry is TYPE_EXTENT_CSUM?

        if (tp.item->key.offset < address && tp.item->key.offset + (tp.item->size * Vcb->superblock.sector_size / sizeof(uint32_t)) >= address)
            startaddr = tp.item->key.offset;
        else
            startaddr = address;

        searchkey.obj_id = EXTENT_CSUM_ID;
        searchkey.obj_type = TYPE_EXTENT_CSUM;
        searchkey.offset = address + (length * Vcb->superblock.sector_size);

        Status = FUNC14(Vcb, Vcb->checksum_root, &tp, &searchkey, false, Irp);
        if (!FUNC3(Status)) {
            FUNC0("find_item returned %08x\n", Status);
            return;
        }

        tplen = tp.item->size / sizeof(uint32_t);

        if (tp.item->key.offset + (tplen * Vcb->superblock.sector_size) >= address + (length * Vcb->superblock.sector_size))
            endaddr = tp.item->key.offset + (tplen * Vcb->superblock.sector_size);
        else
            endaddr = address + (length * Vcb->superblock.sector_size);

        FUNC11("cs starts at %I64x (%x sectors)\n", address, length);
        FUNC11("startaddr = %I64x\n", startaddr);
        FUNC11("endaddr = %I64x\n", endaddr);

        len = (ULONG)((endaddr - startaddr) / Vcb->superblock.sector_size);

        checksums = FUNC1(PagedPool, sizeof(uint32_t) * len, ALLOC_TAG);
        if (!checksums) {
            FUNC0("out of memory\n");
            return;
        }

        bmparr = FUNC1(PagedPool, sizeof(ULONG) * ((len/8)+1), ALLOC_TAG);
        if (!bmparr) {
            FUNC0("out of memory\n");
            FUNC2(checksums);
            return;
        }

        FUNC8(&bmp, bmparr, len);
        FUNC9(&bmp);

        searchkey.obj_id = EXTENT_CSUM_ID;
        searchkey.obj_type = TYPE_EXTENT_CSUM;
        searchkey.offset = address;

        Status = FUNC14(Vcb, Vcb->checksum_root, &tp, &searchkey, false, Irp);
        if (!FUNC3(Status)) {
            FUNC0("find_item returned %08x\n", Status);
            FUNC2(checksums);
            FUNC2(bmparr);
            return;
        }

        // set bit = free space, cleared bit = allocated sector

        while (tp.item->key.offset < endaddr) {
            if (tp.item->key.offset >= startaddr) {
                if (tp.item->size > 0) {
                    ULONG itemlen = (ULONG)FUNC17((len - (tp.item->key.offset - startaddr) / Vcb->superblock.sector_size) * sizeof(uint32_t), tp.item->size);

                    FUNC5(&checksums[(tp.item->key.offset - startaddr) / Vcb->superblock.sector_size], tp.item->data, itemlen);
                    FUNC4(&bmp, (ULONG)((tp.item->key.offset - startaddr) / Vcb->superblock.sector_size), itemlen / sizeof(uint32_t));
                }

                Status = FUNC13(Vcb, &tp);
                if (!FUNC3(Status)) {
                    FUNC0("delete_tree_item returned %08x\n", Status);
                    FUNC2(checksums);
                    FUNC2(bmparr);
                    return;
                }
            }

            if (FUNC15(Vcb, &tp, &next_tp, false, Irp)) {
                tp = next_tp;
            } else
                break;
        }

        if (!csum) { // deleted
            FUNC10(&bmp, (ULONG)((address - startaddr) / Vcb->superblock.sector_size), length);
        } else {
            FUNC5(&checksums[(address - startaddr) / Vcb->superblock.sector_size], csum, length * sizeof(uint32_t));
            FUNC4(&bmp, (ULONG)((address - startaddr) / Vcb->superblock.sector_size), length);
        }

        runlength = FUNC6(&bmp, &index);

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

                data = FUNC1(PagedPool, sizeof(uint32_t) * rl, ALLOC_TAG);
                if (!data) {
                    FUNC0("out of memory\n");
                    FUNC2(bmparr);
                    FUNC2(checksums);
                    return;
                }

                FUNC5(data, &checksums[index], sizeof(uint32_t) * rl);

                off = startaddr + FUNC12(index, Vcb->superblock.sector_size);

                Status = FUNC16(Vcb, Vcb->checksum_root, EXTENT_CSUM_ID, TYPE_EXTENT_CSUM, off, data, sizeof(uint32_t) * rl, NULL, Irp);
                if (!FUNC3(Status)) {
                    FUNC0("insert_tree_item returned %08x\n", Status);
                    FUNC2(data);
                    FUNC2(bmparr);
                    FUNC2(checksums);
                    return;
                }

                runlength -= rl;
                index += rl;
            } while (runlength > 0);

            runlength = FUNC7(&bmp, index, &index);
        }

        FUNC2(bmparr);
        FUNC2(checksums);
    }
}