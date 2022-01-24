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
 int /*<<< orphan*/  RDB_OPCODE_AUX ; 
 int FUNC0 (int /*<<< orphan*/ *,void*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ssize_t FUNC2(rio *rdb, void *key, size_t keylen, void *val, size_t vallen) {
    ssize_t ret, len = 0;
    if ((ret = FUNC1(rdb,RDB_OPCODE_AUX)) == -1) return -1;
    len += ret;
    if ((ret = FUNC0(rdb,key,keylen)) == -1) return -1;
    len += ret;
    if ((ret = FUNC0(rdb,val,vallen)) == -1) return -1;
    len += ret;
    return len;
}