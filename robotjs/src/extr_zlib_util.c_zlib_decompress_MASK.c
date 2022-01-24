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
struct TYPE_5__ {size_t avail_out; char* msg; size_t total_out; int /*<<< orphan*/ * next_out; int /*<<< orphan*/ * next_in; void* opaque; void* zfree; void* zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uInt ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 void* ZLIB_CHUNK ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 void* Z_NULL ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (size_t) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  stderr ; 

uint8_t *FUNC8(const uint8_t *buf, size_t *len)
{
	size_t output_size = ZLIB_CHUNK;
	uint8_t *output = FUNC6(output_size);
	int err;
	z_stream zst;

	/* Sanity check */
	if (output == NULL) return NULL;
	FUNC0(buf != NULL);

	/* Set inflate state */
	zst.zalloc = Z_NULL;
	zst.zfree = Z_NULL;
	zst.opaque = Z_NULL;
	zst.next_out = (Byte *)output;
	zst.next_in = (Byte *)buf;
	zst.avail_out = ZLIB_CHUNK;

	if (FUNC5(&zst) != Z_OK) goto error;

	/* Decompress input buffer */
	do {
		if ((err = FUNC3(&zst, Z_NO_FLUSH)) == Z_OK) { /* Need more memory */
			zst.avail_out = (uInt)output_size;

			/* Double size each time to avoid calls to realloc() */
			output_size <<= 1;
			output = FUNC7(output, output_size + 1);
			if (output == NULL) return NULL;

			zst.next_out = (Byte *)(output + zst.avail_out);
		} else if (err != Z_STREAM_END) { /* Error decompressing */
			if (zst.msg != NULL) {
				FUNC1(stderr, "Could not decompress data: %s\n", zst.msg);
			}
			FUNC4(&zst);
			goto error;
		}
	} while (err != Z_STREAM_END);

	if (len != NULL) *len = zst.total_out;
	if (FUNC4(&zst) != Z_OK) goto error;
	return output; /* To be free()'d by caller */

error:
	if (output != NULL) FUNC2(output);
	return NULL;
}