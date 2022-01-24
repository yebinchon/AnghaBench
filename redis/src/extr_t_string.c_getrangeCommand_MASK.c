#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ encoding; char* ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  llbuf ;
struct TYPE_13__ {int /*<<< orphan*/ * argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_14__ {int /*<<< orphan*/  emptybulk; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 scalar_t__ OBJ_ENCODING_INT ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,long long) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,long long*,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (char*,int,long) ; 
 TYPE_1__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char*) ; 
 TYPE_3__ shared ; 

void FUNC7(client *c) {
    robj *o;
    long long start, end;
    char *str, llbuf[32];
    size_t strlen;

    if (FUNC3(c,c->argv[2],&start,NULL) != C_OK)
        return;
    if (FUNC3(c,c->argv[3],&end,NULL) != C_OK)
        return;
    if ((o = FUNC5(c,c->argv[1],shared.emptybulk)) == NULL ||
        FUNC2(c,o,OBJ_STRING)) return;

    if (o->encoding == OBJ_ENCODING_INT) {
        str = llbuf;
        strlen = FUNC4(llbuf,sizeof(llbuf),(long)o->ptr);
    } else {
        str = o->ptr;
        strlen = FUNC6(str);
    }

    /* Convert negative indexes */
    if (start < 0 && end < 0 && start > end) {
        FUNC0(c,shared.emptybulk);
        return;
    }
    if (start < 0) start = strlen+start;
    if (end < 0) end = strlen+end;
    if (start < 0) start = 0;
    if (end < 0) end = 0;
    if ((unsigned long long)end >= strlen) end = strlen-1;

    /* Precondition: end >= 0 && end < strlen, so the only condition where
     * nothing can be returned is: start > end. */
    if (start > end || strlen == 0) {
        FUNC0(c,shared.emptybulk);
    } else {
        FUNC1(c,(char*)str+start,end-start+1);
    }
}