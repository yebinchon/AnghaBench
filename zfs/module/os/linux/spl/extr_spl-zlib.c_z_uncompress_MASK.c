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
struct TYPE_5__ {scalar_t__ avail_in; size_t total_out; int /*<<< orphan*/  workspace; void* avail_out; void* next_out; int /*<<< orphan*/ * next_in; } ;
typedef  TYPE_1__ z_stream ;
typedef  void* uInt ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int Z_BUF_ERROR ; 
 int Z_DATA_ERROR ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_MEM_ERROR ; 
 int Z_NEED_DICT ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(void *dest, size_t *destLen, const void *source, size_t sourceLen)
{
	z_stream stream;
	int err;

	stream.next_in = (Byte *)source;
	stream.avail_in = (uInt)sourceLen;
	stream.next_out = dest;
	stream.avail_out = (uInt)*destLen;

	if ((size_t)stream.avail_out != *destLen)
		return (Z_BUF_ERROR);

	stream.workspace = FUNC3(KM_SLEEP);
	if (!stream.workspace)
		return (Z_MEM_ERROR);

	err = FUNC2(&stream);
	if (err != Z_OK) {
		FUNC4(stream.workspace);
		return (err);
	}

	err = FUNC0(&stream, Z_FINISH);
	if (err != Z_STREAM_END) {
		FUNC1(&stream);
		FUNC4(stream.workspace);

		if (err == Z_NEED_DICT ||
		    (err == Z_BUF_ERROR && stream.avail_in == 0))
			return (Z_DATA_ERROR);

		return (err);
	}
	*destLen = stream.total_out;

	err = FUNC1(&stream);
	FUNC4(stream.workspace);

	return (err);
}