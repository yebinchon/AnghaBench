#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  rax; } ;
struct TYPE_6__ {int /*<<< orphan*/  ri; TYPE_2__* dict; } ;
typedef  TYPE_1__ RedisModuleDictIter ;
typedef  TYPE_2__ RedisModuleDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 

RedisModuleDictIter *FUNC3(RedisModuleDict *d, const char *op, void *key, size_t keylen) {
    RedisModuleDictIter *di = FUNC2(sizeof(*di));
    di->dict = d;
    FUNC1(&di->ri,d->rax);
    FUNC0(&di->ri,op,key,keylen);
    return di;
}