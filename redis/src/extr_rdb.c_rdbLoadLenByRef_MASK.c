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
typedef  unsigned char uint64_t ;
typedef  unsigned char uint32_t ;
typedef  int /*<<< orphan*/  rio ;

/* Variables and functions */
 int RDB_14BITLEN ; 
 unsigned char RDB_32BITLEN ; 
 unsigned char RDB_64BITLEN ; 
 int RDB_6BITLEN ; 
 int RDB_ENCVAL ; 
 unsigned char FUNC0 (unsigned char) ; 
 unsigned char FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 

int FUNC4(rio *rdb, int *isencoded, uint64_t *lenptr) {
    unsigned char buf[2];
    int type;

    if (isencoded) *isencoded = 0;
    if (FUNC3(rdb,buf,1) == 0) return -1;
    type = (buf[0]&0xC0)>>6;
    if (type == RDB_ENCVAL) {
        /* Read a 6 bit encoding type. */
        if (isencoded) *isencoded = 1;
        *lenptr = buf[0]&0x3F;
    } else if (type == RDB_6BITLEN) {
        /* Read a 6 bit len. */
        *lenptr = buf[0]&0x3F;
    } else if (type == RDB_14BITLEN) {
        /* Read a 14 bit len. */
        if (FUNC3(rdb,buf+1,1) == 0) return -1;
        *lenptr = ((buf[0]&0x3F)<<8)|buf[1];
    } else if (buf[0] == RDB_32BITLEN) {
        /* Read a 32 bit len. */
        uint32_t len;
        if (FUNC3(rdb,&len,4) == 0) return -1;
        *lenptr = FUNC0(len);
    } else if (buf[0] == RDB_64BITLEN) {
        /* Read a 64 bit len. */
        uint64_t len;
        if (FUNC3(rdb,&len,8) == 0) return -1;
        *lenptr = FUNC1(len);
    } else {
        FUNC2(
            "Unknown length encoding %d in rdbLoadLen()",type);
        return -1; /* Never reached. */
    }
    return 0;
}