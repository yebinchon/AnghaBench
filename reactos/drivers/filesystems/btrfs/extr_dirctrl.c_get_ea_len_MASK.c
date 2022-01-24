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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  root ;
typedef  int /*<<< orphan*/  device_extension ;
typedef  int ULONG ;
struct TYPE_3__ {scalar_t__ NextEntryOffset; scalar_t__ EaValueLength; scalar_t__ EaNameLength; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_1__ FILE_FULL_EA_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  EA_EA ; 
 int /*<<< orphan*/  EA_EA_HASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ULONG FUNC5(device_extension* Vcb, root* subvol, uint64_t inode, PIRP Irp) {
    uint8_t* eadata;
    uint16_t len;

    if (FUNC4(Vcb, subvol, inode, EA_EA, EA_EA_HASH, &eadata, &len, Irp)) {
        ULONG offset;
        NTSTATUS Status;

        Status = FUNC1((FILE_FULL_EA_INFORMATION*)eadata, len, &offset);

        if (!FUNC2(Status)) {
            FUNC3("IoCheckEaBufferValidity returned %08x (error at offset %u)\n", Status, offset);
            FUNC0(eadata);
            return 0;
        } else {
            FILE_FULL_EA_INFORMATION* eainfo;
            ULONG ealen;

            ealen = 4;
            eainfo = (FILE_FULL_EA_INFORMATION*)eadata;
            do {
                ealen += 5 + eainfo->EaNameLength + eainfo->EaValueLength;

                if (eainfo->NextEntryOffset == 0)
                    break;

                eainfo = (FILE_FULL_EA_INFORMATION*)(((uint8_t*)eainfo) + eainfo->NextEntryOffset);
            } while (true);

            FUNC0(eadata);

            return ealen;
        }
    } else
        return 0;
}