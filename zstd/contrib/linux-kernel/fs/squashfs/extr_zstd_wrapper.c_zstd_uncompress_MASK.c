#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct workspace {int /*<<< orphan*/  mem_size; int /*<<< orphan*/  mem; int /*<<< orphan*/  window_size; } ;
struct squashfs_sb_info {scalar_t__ devblksize; } ;
struct squashfs_page_actor {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ pos; int /*<<< orphan*/ * dst; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {scalar_t__ pos; scalar_t__ size; scalar_t__ src; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  ZSTD_DStream ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* PAGE_SIZE ; 
 size_t FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct squashfs_page_actor*) ; 
 int /*<<< orphan*/ * FUNC8 (struct squashfs_page_actor*) ; 
 int /*<<< orphan*/ * FUNC9 (struct squashfs_page_actor*) ; 

__attribute__((used)) static int FUNC10(struct squashfs_sb_info *msblk, void *strm,
	struct buffer_head **bh, int b, int offset, int length,
	struct squashfs_page_actor *output)
{
	struct workspace *wksp = strm;
	ZSTD_DStream *stream;
	size_t total_out = 0;
	size_t zstd_err;
	int k = 0;
	ZSTD_inBuffer in_buf = { NULL, 0, 0 };
	ZSTD_outBuffer out_buf = { NULL, 0, 0 };

	stream = FUNC3(wksp->window_size, wksp->mem, wksp->mem_size);

	if (!stream) {
		FUNC0("Failed to initialize zstd decompressor\n");
		goto out;
	}

	out_buf.size = PAGE_SIZE;
	out_buf.dst = FUNC8(output);

	do {
		if (in_buf.pos == in_buf.size && k < b) {
			int avail = FUNC5(length, msblk->devblksize - offset);

			length -= avail;
			in_buf.src = bh[k]->b_data + offset;
			in_buf.size = avail;
			in_buf.pos = 0;
			offset = 0;
		}

		if (out_buf.pos == out_buf.size) {
			out_buf.dst = FUNC9(output);
			if (out_buf.dst == NULL) {
				/* Shouldn't run out of pages
				 * before stream is done.
				 */
				FUNC7(output);
				goto out;
			}
			out_buf.pos = 0;
			out_buf.size = PAGE_SIZE;
		}

		total_out -= out_buf.pos;
		zstd_err = FUNC1(stream, &out_buf, &in_buf);
		total_out += out_buf.pos; /* add the additional data produced */

		if (in_buf.pos == in_buf.size && k < b)
			FUNC6(bh[k++]);
	} while (zstd_err != 0 && !FUNC4(zstd_err));

	FUNC7(output);

	if (FUNC4(zstd_err)) {
		FUNC0("zstd decompression error: %d\n",
				(int)FUNC2(zstd_err));
		goto out;
	}

	if (k < b)
		goto out;

	return (int)total_out;

out:
	for (; k < b; k++)
		FUNC6(bh[k]);

	return -EIO;
}