#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * expires; int /*<<< orphan*/ * dict; } ;
typedef  TYPE_1__ redisDb ;
typedef  int /*<<< orphan*/  dict ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_LAZY_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dbDictType ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  keyptrDictType ; 
 int /*<<< orphan*/  lazyfree_objects ; 

void FUNC4(redisDb *db) {
    dict *oldht1 = db->dict, *oldht2 = db->expires;
    db->dict = FUNC2(&dbDictType,NULL);
    db->expires = FUNC2(&keyptrDictType,NULL);
    FUNC0(lazyfree_objects,FUNC3(oldht1));
    FUNC1(BIO_LAZY_FREE,NULL,oldht1,oldht2);
}