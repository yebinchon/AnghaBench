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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  rio ;

/* Variables and functions */
 size_t FUNC0 (unsigned char*,size_t,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (size_t) ; 

ssize_t FUNC4(rio *rdb, unsigned char *s, size_t len) {
    size_t comprlen, outlen;
    void *out;

    /* We require at least four bytes compression for this to be worth it */
    if (len <= 4) return 0;
    outlen = len-4;
    if ((out = FUNC3(outlen+1)) == NULL) return 0;
    comprlen = FUNC0(s, len, out, outlen);
    if (comprlen == 0) {
        FUNC2(out);
        return 0;
    }
    ssize_t nwritten = FUNC1(rdb, out, comprlen, len);
    FUNC2(out);
    return nwritten;
}