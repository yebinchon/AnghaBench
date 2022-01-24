#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  scalar_t__ ULONG ;
struct TYPE_5__ {scalar_t__ Type; scalar_t__ DataLength; int DataOffset; } ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_1__ KEY_VALUE_FULL_INFORMATION ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  KeyValueFullInformation ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ STATUS_BUFFER_OVERFLOW ; 
 scalar_t__ STATUS_BUFFER_TOO_SMALL ; 
 scalar_t__ STATUS_OBJECT_NAME_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,void*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(HANDLE h, WCHAR* string, ULONG type, void* val, ULONG size) {
    ULONG kvfilen;
    KEY_VALUE_FULL_INFORMATION* kvfi;
    UNICODE_STRING us;
    NTSTATUS Status;

    FUNC5(&us, string);

    kvfi = NULL;
    kvfilen = 0;
    Status = FUNC8(h, &us, KeyValueFullInformation, kvfi, kvfilen, &kvfilen);

    if ((Status == STATUS_BUFFER_TOO_SMALL || Status == STATUS_BUFFER_OVERFLOW) && kvfilen > 0) {
        kvfi = FUNC1(PagedPool, kvfilen, ALLOC_TAG);

        if (!kvfi) {
            FUNC0("out of memory\n");
            FUNC6(h);
            return;
        }

        Status = FUNC8(h, &us, KeyValueFullInformation, kvfi, kvfilen, &kvfilen);

        if (FUNC3(Status)) {
            if (kvfi->Type == type && kvfi->DataLength >= size) {
                FUNC4(val, ((uint8_t*)kvfi) + kvfi->DataOffset, size);
            } else {
                Status = FUNC7(h, &us);
                if (!FUNC3(Status)) {
                    FUNC0("ZwDeleteValueKey returned %08x\n", Status);
                }

                Status = FUNC9(h, &us, 0, type, val, size);
                if (!FUNC3(Status)) {
                    FUNC0("ZwSetValueKey returned %08x\n", Status);
                }
            }
        }

        FUNC2(kvfi);
    } else if (Status == STATUS_OBJECT_NAME_NOT_FOUND) {
        Status = FUNC9(h, &us, 0, type, val, size);

        if (!FUNC3(Status)) {
            FUNC0("ZwSetValueKey returned %08x\n", Status);
        }
    } else {
        FUNC0("ZwQueryValueKey returned %08x\n", Status);
    }
}