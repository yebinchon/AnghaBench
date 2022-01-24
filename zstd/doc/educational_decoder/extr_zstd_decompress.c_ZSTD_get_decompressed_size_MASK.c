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
typedef  int u32 ;
typedef  int /*<<< orphan*/  istream_t ;
struct TYPE_3__ {scalar_t__ frame_content_size; int /*<<< orphan*/  single_segment_flag; } ;
typedef  TYPE_1__ frame_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void const*,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

size_t FUNC4(const void *src, const size_t src_len) {
    istream_t in = FUNC1(src, src_len);

    // get decompressed size from ZSTD frame header
    {
        const u32 magic_number = (u32)FUNC2(&in, 32);

        if (magic_number == 0xFD2FB528U) {
            // ZSTD frame
            frame_header_t header;
            FUNC3(&header, &in);

            if (header.frame_content_size == 0 && !header.single_segment_flag) {
                // Content size not provided, we can't tell
                return (size_t)-1;
            }

            return header.frame_content_size;
        } else {
            // not a real frame or skippable frame
            FUNC0("ZSTD frame magic number did not match");
        }
    }
}