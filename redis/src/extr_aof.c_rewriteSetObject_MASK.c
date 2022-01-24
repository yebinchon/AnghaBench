#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_6__ {scalar_t__ encoding; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  rio ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 long long AOF_REWRITE_ITEMS_PER_CMD ; 
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_INTSET ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 long long FUNC11 (TYPE_1__*) ; 

int FUNC12(rio *r, robj *key, robj *o) {
    long long count = 0, items = FUNC11(o);

    if (o->encoding == OBJ_ENCODING_INTSET) {
        int ii = 0;
        int64_t llval;

        while(FUNC4(o->ptr,ii++,&llval)) {
            if (count == 0) {
                int cmd_items = (items > AOF_REWRITE_ITEMS_PER_CMD) ?
                    AOF_REWRITE_ITEMS_PER_CMD : items;

                if (FUNC5(r,'*',2+cmd_items) == 0) return 0;
                if (FUNC8(r,"SADD",4) == 0) return 0;
                if (FUNC7(r,key) == 0) return 0;
            }
            if (FUNC6(r,llval) == 0) return 0;
            if (++count == AOF_REWRITE_ITEMS_PER_CMD) count = 0;
            items--;
        }
    } else if (o->encoding == OBJ_ENCODING_HT) {
        dictIterator *di = FUNC0(o->ptr);
        dictEntry *de;

        while((de = FUNC2(di)) != NULL) {
            sds ele = FUNC1(de);
            if (count == 0) {
                int cmd_items = (items > AOF_REWRITE_ITEMS_PER_CMD) ?
                    AOF_REWRITE_ITEMS_PER_CMD : items;

                if (FUNC5(r,'*',2+cmd_items) == 0) return 0;
                if (FUNC8(r,"SADD",4) == 0) return 0;
                if (FUNC7(r,key) == 0) return 0;
            }
            if (FUNC8(r,ele,FUNC9(ele)) == 0) return 0;
            if (++count == AOF_REWRITE_ITEMS_PER_CMD) count = 0;
            items--;
        }
        FUNC3(di);
    } else {
        FUNC10("Unknown set encoding");
    }
    return 1;
}