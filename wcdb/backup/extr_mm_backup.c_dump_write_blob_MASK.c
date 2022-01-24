#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  mm_backup_ctx ;

/* Variables and functions */
 scalar_t__ MMBAK_TAG_BIND_BLOB ; 
 scalar_t__ MMBAK_TAG_BIND_TEXT ; 
 int /*<<< orphan*/  MMBAK_TAG_LARGE_DATA ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(mm_backup_ctx *ctx, uint8_t tag, const void *data, int size)
{
    const char *p = (const char *) data;
    int ret;

    if (size < 0)
        size = FUNC5(p);

    if (size >= 65536) {
        uint32_t ext_size = size & 0xFFFF0000;
        uint16_t blocks = ext_size >> 16;
        ret = FUNC0(ctx, MMBAK_TAG_LARGE_DATA);
        ret |= FUNC3(ctx, blocks);
        ret |= FUNC4(ctx, p, ext_size);
        if (ret != 0)
            return -1;
        size -= ext_size;
        p += ext_size;
    }

    if (size < 256 &&
        (tag == MMBAK_TAG_BIND_TEXT || tag == MMBAK_TAG_BIND_BLOB))
        ret = FUNC1(ctx, ++tag, (uint8_t) size);
    else
        ret = FUNC2(ctx, tag, (uint16_t) size);
    ret |= FUNC4(ctx, p, size);
    if (ret != 0)
        return -1;

    return 0;
}