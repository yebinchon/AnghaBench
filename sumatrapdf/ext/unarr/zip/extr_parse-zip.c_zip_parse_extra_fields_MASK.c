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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct zip_entry {scalar_t__ extralen; scalar_t__ uncompressed; scalar_t__ datasize; scalar_t__ header_offset; int /*<<< orphan*/  disk; int /*<<< orphan*/  namelen; } ;
typedef  scalar_t__ off64_t ;
struct TYPE_4__ {int /*<<< orphan*/  stream; } ;
struct TYPE_5__ {TYPE_1__ super; } ;
typedef  TYPE_2__ ar_archive_zip ;

/* Variables and functions */
 int /*<<< orphan*/  UINT16_MAX ; 
 scalar_t__ UINT32_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(ar_archive_zip *zip, struct zip_entry *entry)
{
    uint8_t *extra;
    uint32_t idx;

    if (!entry->extralen)
        return true;

    /* read ZIP64 values where needed */
    if (!FUNC1(zip->super.stream, entry->namelen))
        return false;
    extra = FUNC3(entry->extralen);
    if (!extra || FUNC0(zip->super.stream, extra, entry->extralen) != entry->extralen) {
        FUNC2(extra);
        return false;
    }
    for (idx = 0; idx + 4 < entry->extralen; idx += 4 + FUNC4(&extra[idx + 2])) {
        if (FUNC4(&extra[idx]) == 0x0001) {
            uint16_t size = FUNC4(&extra[idx + 2]);
            uint16_t offset = 0;
            if (entry->uncompressed == UINT32_MAX && offset + 8 <= size) {
                entry->uncompressed = FUNC6(&extra[idx + 4 + offset]);
                offset += 8;
            }
            if (entry->datasize == UINT32_MAX && offset + 8 <= size) {
                entry->datasize = FUNC6(&extra[idx + 4 + offset]);
                offset += 8;
            }
            if (entry->header_offset == UINT32_MAX && offset + 8 <= size) {
                entry->header_offset = (off64_t)FUNC6(&extra[idx + 4 + offset]);
                offset += 8;
            }
            if (entry->disk == UINT16_MAX && offset + 4 <= size) {
                entry->disk = FUNC5(&extra[idx + 4 + offset]);
                offset += 4;
            }
            break;
        }
    }
    FUNC2(extra);

    return true;
}