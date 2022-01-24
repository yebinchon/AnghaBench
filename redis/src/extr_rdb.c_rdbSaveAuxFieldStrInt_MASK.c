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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int LONG_STR_SIZE ; 
 int FUNC0 (char*,int,long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

ssize_t FUNC3(rio *rdb, char *key, long long val) {
    char buf[LONG_STR_SIZE];
    int vlen = FUNC0(buf,sizeof(buf),val);
    return FUNC1(rdb,key,FUNC2(key),buf,vlen);
}