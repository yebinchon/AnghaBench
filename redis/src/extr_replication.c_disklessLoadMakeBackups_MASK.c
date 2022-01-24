#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* expires; void* dict; } ;
typedef  TYPE_1__ redisDb ;
struct TYPE_6__ {int dbnum; TYPE_1__* db; } ;

/* Variables and functions */
 int /*<<< orphan*/  dbDictType ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  keyptrDictType ; 
 TYPE_3__ server ; 
 TYPE_1__* FUNC1 (int) ; 

redisDb *FUNC2(void) {
    redisDb *backups = FUNC1(sizeof(redisDb)*server.dbnum);
    for (int i=0; i<server.dbnum; i++) {
        backups[i] = server.db[i];
        server.db[i].dict = FUNC0(&dbDictType,NULL);
        server.db[i].expires = FUNC0(&keyptrDictType,NULL);
    }
    return backups;
}