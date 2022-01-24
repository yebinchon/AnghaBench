#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  delivery_count; int /*<<< orphan*/  delivery_time; } ;
typedef  TYPE_1__ streamNACK ;
typedef  int /*<<< orphan*/  streamID ;
struct TYPE_6__ {char* name; } ;
typedef  TYPE_2__ streamConsumer ;
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  rio ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ *) ; 

int FUNC7(rio *r, robj *key, const char *groupname, size_t groupname_len, streamConsumer *consumer, unsigned char *rawid, streamNACK *nack) {
     /* XCLAIM <key> <group> <consumer> 0 <id> TIME <milliseconds-unix-time>
               RETRYCOUNT <count> JUSTID FORCE. */
    streamID id;
    FUNC6(rawid,&id);
    if (FUNC0(r,'*',12) == 0) return 0;
    if (FUNC4(r,"XCLAIM",6) == 0) return 0;
    if (FUNC2(r,key) == 0) return 0;
    if (FUNC4(r,groupname,groupname_len) == 0) return 0;
    if (FUNC4(r,consumer->name,FUNC5(consumer->name)) == 0) return 0;
    if (FUNC4(r,"0",1) == 0) return 0;
    if (FUNC3(r,&id) == 0) return 0;
    if (FUNC4(r,"TIME",4) == 0) return 0;
    if (FUNC1(r,nack->delivery_time) == 0) return 0;
    if (FUNC4(r,"RETRYCOUNT",10) == 0) return 0;
    if (FUNC1(r,nack->delivery_count) == 0) return 0;
    if (FUNC4(r,"JUSTID",6) == 0) return 0;
    if (FUNC4(r,"FORCE",5) == 0) return 0;
    return 1;
}