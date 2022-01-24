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
 int /*<<< orphan*/  SEEK_END ; 
 scalar_t__ SIG_END_OF_CENTRAL_DIRECTORY ; 
 int UINT16_MAX ; 
 int ZIP_END_OF_CENTRAL_DIR_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

off64_t FUNC4(ar_stream *stream)
{
    uint8_t data[512];
    off64_t filesize;
    int fromend = 0;
    int count, i;

    if (!FUNC1(stream, 0, SEEK_END))
        return -1;
    filesize = FUNC2(stream);

    while (fromend < UINT16_MAX + ZIP_END_OF_CENTRAL_DIR_SIZE && fromend < filesize) {
        count = (int)(filesize - fromend < sizeof(data) ? filesize - fromend : sizeof(data));
        fromend += count;
        if (count < ZIP_END_OF_CENTRAL_DIR_SIZE)
            return -1;
        if (!FUNC1(stream, -fromend, SEEK_END))
            return -1;
        if (FUNC0(stream, data, count) != (size_t)count)
            return -1;
        for (i = count - ZIP_END_OF_CENTRAL_DIR_SIZE; i >= 0; i--) {
            if (FUNC3(data + i) == SIG_END_OF_CENTRAL_DIRECTORY)
                return filesize - fromend + i;
        }
        fromend -= ZIP_END_OF_CENTRAL_DIR_SIZE - 1;
    }

    return -1;
}