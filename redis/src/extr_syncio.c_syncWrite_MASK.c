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

/* Variables and functions */
 int /*<<< orphan*/  AE_WRITABLE ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ ETIMEDOUT ; 
 long long SYNCIO__RESOLUTION ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,long long) ; 
 scalar_t__ errno ; 
 long long FUNC1 () ; 
 int FUNC2 (int,char*,int) ; 

ssize_t FUNC3(int fd, char *ptr, ssize_t size, long long timeout) {
    ssize_t nwritten, ret = size;
    long long start = FUNC1();
    long long remaining = timeout;

    while(1) {
        long long wait = (remaining > SYNCIO__RESOLUTION) ?
                          remaining : SYNCIO__RESOLUTION;
        long long elapsed;

        /* Optimistically try to write before checking if the file descriptor
         * is actually writable. At worst we get EAGAIN. */
        nwritten = FUNC2(fd,ptr,size);
        if (nwritten == -1) {
            if (errno != EAGAIN) return -1;
        } else {
            ptr += nwritten;
            size -= nwritten;
        }
        if (size == 0) return ret;

        /* Wait */
        FUNC0(fd,AE_WRITABLE,wait);
        elapsed = FUNC1() - start;
        if (elapsed >= timeout) {
            errno = ETIMEDOUT;
            return -1;
        }
        remaining = timeout - elapsed;
    }
}