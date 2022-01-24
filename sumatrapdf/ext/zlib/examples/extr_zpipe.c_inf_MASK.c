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
struct TYPE_5__ {scalar_t__ avail_in; unsigned char* next_in; scalar_t__ avail_out; unsigned char* next_out; void* opaque; void* zfree; void* zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CHUNK ; 
#define  Z_DATA_ERROR 130 
 int Z_ERRNO ; 
#define  Z_MEM_ERROR 129 
#define  Z_NEED_DICT 128 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 void* Z_NULL ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int Z_STREAM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (unsigned char*,int,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 

int FUNC7(FILE *source, FILE *dest)
{
    int ret;
    unsigned have;
    z_stream strm;
    unsigned char in[CHUNK];
    unsigned char out[CHUNK];

    /* allocate inflate state */
    strm.zalloc = Z_NULL;
    strm.zfree = Z_NULL;
    strm.opaque = Z_NULL;
    strm.avail_in = 0;
    strm.next_in = Z_NULL;
    ret = FUNC6(&strm);
    if (ret != Z_OK)
        return ret;

    /* decompress until deflate stream ends or end of file */
    do {
        strm.avail_in = FUNC2(in, 1, CHUNK, source);
        if (FUNC1(source)) {
            (void)FUNC5(&strm);
            return Z_ERRNO;
        }
        if (strm.avail_in == 0)
            break;
        strm.next_in = in;

        /* run inflate() on input until output buffer not full */
        do {
            strm.avail_out = CHUNK;
            strm.next_out = out;
            ret = FUNC4(&strm, Z_NO_FLUSH);
            FUNC0(ret != Z_STREAM_ERROR);  /* state not clobbered */
            switch (ret) {
            case Z_NEED_DICT:
                ret = Z_DATA_ERROR;     /* and fall through */
            case Z_DATA_ERROR:
            case Z_MEM_ERROR:
                (void)FUNC5(&strm);
                return ret;
            }
            have = CHUNK - strm.avail_out;
            if (FUNC3(out, 1, have, dest) != have || FUNC1(dest)) {
                (void)FUNC5(&strm);
                return Z_ERRNO;
            }
        } while (strm.avail_out == 0);

        /* done when inflate() says it's done */
    } while (ret != Z_STREAM_END);

    /* clean up and return */
    (void)FUNC5(&strm);
    return ret == Z_STREAM_END ? Z_OK : Z_DATA_ERROR;
}