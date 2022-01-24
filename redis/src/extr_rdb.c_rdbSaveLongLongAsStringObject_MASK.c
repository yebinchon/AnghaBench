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
 int FUNC0 (char*,int,long long) ; 
 int FUNC1 (long long,unsigned char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

ssize_t FUNC5(rio *rdb, long long value) {
    unsigned char buf[32];
    ssize_t n, nwritten = 0;
    int enclen = FUNC1(value,buf);
    if (enclen > 0) {
        return FUNC3(rdb,buf,enclen);
    } else {
        /* Encode as string */
        enclen = FUNC0((char*)buf,32,value);
        FUNC4(enclen < 32);
        if ((n = FUNC2(rdb,enclen)) == -1) return -1;
        nwritten += n;
        if ((n = FUNC3(rdb,buf,enclen)) == -1) return -1;
        nwritten += n;
    }
    return nwritten;
}