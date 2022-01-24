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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int off64_t ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  ar_stream ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ SIG_LOCAL_FILE_HEADER ; 
 int ZIP_LOCAL_ENTRY_FIXED_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

off64_t FUNC4(ar_stream *stream, off64_t offset)
{
    uint8_t data[512];
    int count, i;

    if (!FUNC1(stream, offset, SEEK_SET))
        return -1;
    count = (int)FUNC0(stream, data, sizeof(data));

    while (count >= ZIP_LOCAL_ENTRY_FIXED_SIZE) {
        for (i = 0; i < count - 4; i++) {
            if (FUNC3(data + i) == SIG_LOCAL_FILE_HEADER)
                return offset + i;
        }
        FUNC2(data, data + count - 4, count);
        offset += count - 4;
        count = (int)FUNC0(stream, data + 4, sizeof(data) - 4) + 4;
    }

    return -1;
}