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
struct sdshdr8 {size_t len; size_t alloc; char* buf; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int refcount; int lru; struct sdshdr8* ptr; int /*<<< orphan*/  encoding; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ robj ;
struct TYPE_6__ {int maxmemory_policy; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int LFU_INIT_VAL ; 
 int FUNC1 () ; 
 int MAXMEMORY_FLAG_LFU ; 
 int /*<<< orphan*/  OBJ_ENCODING_EMBSTR ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 char const* SDS_NOINIT ; 
 int /*<<< orphan*/  SDS_TYPE_8 ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_3__ server ; 
 TYPE_1__* FUNC4 (int) ; 

robj *FUNC5(const char *ptr, size_t len) {
    robj *o = FUNC4(sizeof(robj)+sizeof(struct sdshdr8)+len+1);
    struct sdshdr8 *sh = (void*)(o+1);

    o->type = OBJ_STRING;
    o->encoding = OBJ_ENCODING_EMBSTR;
    o->ptr = sh+1;
    o->refcount = 1;
    if (server.maxmemory_policy & MAXMEMORY_FLAG_LFU) {
        o->lru = (FUNC0()<<8) | LFU_INIT_VAL;
    } else {
        o->lru = FUNC1();
    }

    sh->len = len;
    sh->alloc = len;
    sh->flags = SDS_TYPE_8;
    if (ptr == SDS_NOINIT)
        sh->buf[len] = '\0';
    else if (ptr) {
        FUNC2(sh->buf,ptr,len);
        sh->buf[len] = '\0';
    } else {
        FUNC3(sh->buf,0,len+1);
    }
    return o;
}