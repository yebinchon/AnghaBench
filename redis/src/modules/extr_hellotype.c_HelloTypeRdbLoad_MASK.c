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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  void HelloTypeObject ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  RedisModuleIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 () ; 

void *FUNC4(RedisModuleIO *rdb, int encver) {
    if (encver != 0) {
        /* RedisModule_Log("warning","Can't load data with version %d", encver);*/
        return NULL;
    }
    uint64_t elements = FUNC2(rdb);
    struct HelloTypeObject *hto = FUNC3();
    while(elements--) {
        int64_t ele = FUNC1(rdb);
        FUNC0(hto,ele);
    }
    return hto;
}