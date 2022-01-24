#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int avail_in; int avail_out; unsigned char* next_out; int /*<<< orphan*/ * next_in; void* opaque; void* zfree; void* zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  guint8 ;
struct TYPE_10__ {int len; } ;
typedef  TYPE_2__ GByteArray ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int ZLIB_BUF_SIZE ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 void* Z_NULL ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 

int
FUNC7 (guint8 *input, int inlen, guint8 **output, int *outlen)
{
    int ret;
    unsigned have;
    z_stream strm;
    unsigned char out[ZLIB_BUF_SIZE];
    GByteArray *barray;

    if (inlen == 0) {
        FUNC3 ("Empty input for zlib, invalid.\n");
        return -1;
    }

    /* allocate inflate state */
    strm.zalloc = Z_NULL;
    strm.zfree = Z_NULL;
    strm.opaque = Z_NULL;
    strm.avail_in = 0;
    strm.next_in = Z_NULL;
    ret = FUNC6(&strm);
    if (ret != Z_OK) {
        FUNC3 ("inflateInit failed.\n");
        return -1;
    }

    strm.avail_in = inlen;
    strm.next_in = input;
    barray = FUNC2 ();

    do {
        strm.avail_out = ZLIB_BUF_SIZE;
        strm.next_out = out;
        ret = FUNC4(&strm, Z_NO_FLUSH);
        if (ret < 0) {
            FUNC3 ("Failed to inflate.\n");
            goto out;
        }
        have = ZLIB_BUF_SIZE - strm.avail_out;
        FUNC0 (barray, out, have);
    } while (ret != Z_STREAM_END);

out:
    /* clean up and return */
    (void)FUNC5(&strm);

    if (ret == Z_STREAM_END) {
        *outlen = barray->len;
        *output = FUNC1 (barray, FALSE);
        return 0;
    } else {
        FUNC1 (barray, TRUE);
        return -1;
    }
}