#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rio ;
struct TYPE_2__ {scalar_t__ rdb_compression; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int FUNC2 (char*,size_t,unsigned char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 TYPE_1__ server ; 

ssize_t FUNC4(rio *rdb, unsigned char *s, size_t len) {
    int enclen;
    ssize_t n, nwritten = 0;

    /* Try integer encoding */
    if (len <= 11) {
        unsigned char buf[5];
        if ((enclen = FUNC2((char*)s,len,buf)) > 0) {
            if (FUNC3(rdb,buf,enclen) == -1) return -1;
            return enclen;
        }
    }

    /* Try LZF compression - under 20 bytes it's unable to compress even
     * aaaaaaaaaaaaaaaaaa so skip it */
    if (server.rdb_compression && len > 20) {
        n = FUNC1(rdb,s,len);
        if (n == -1) return -1;
        if (n > 0) return n;
        /* Return value of 0 means data can't be compressed, save the old way */
    }

    /* Store verbatim */
    if ((n = FUNC0(rdb,len)) == -1) return -1;
    nwritten += n;
    if (len > 0) {
        if (FUNC3(rdb,s,len) == -1) return -1;
        nwritten += len;
    }
    return nwritten;
}