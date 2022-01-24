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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rio ;

/* Variables and functions */
 int RDB_ENCVAL ; 
 int RDB_ENC_LZF ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*,size_t) ; 

ssize_t FUNC2(rio *rdb, void *data, size_t compress_len,
                       size_t original_len) {
    unsigned char byte;
    ssize_t n, nwritten = 0;

    /* Data compressed! Let's save it on disk */
    byte = (RDB_ENCVAL<<6)|RDB_ENC_LZF;
    if ((n = FUNC1(rdb,&byte,1)) == -1) goto writeerr;
    nwritten += n;

    if ((n = FUNC0(rdb,compress_len)) == -1) goto writeerr;
    nwritten += n;

    if ((n = FUNC0(rdb,original_len)) == -1) goto writeerr;
    nwritten += n;

    if ((n = FUNC1(rdb,data,compress_len)) == -1) goto writeerr;
    nwritten += n;

    return nwritten;

writeerr:
    return -1;
}