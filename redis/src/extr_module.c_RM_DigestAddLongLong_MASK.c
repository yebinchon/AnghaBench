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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int /*<<< orphan*/  o; } ;
typedef  TYPE_1__ RedisModuleDigest ;

/* Variables and functions */
 int LONG_STR_SIZE ; 
 size_t FUNC0 (char*,int,long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 

void FUNC2(RedisModuleDigest *md, long long ll) {
    char buf[LONG_STR_SIZE];
    size_t len = FUNC0(buf,sizeof(buf),ll);
    FUNC1(md->o,buf,len);
}