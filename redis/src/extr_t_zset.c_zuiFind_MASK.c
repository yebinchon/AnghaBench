#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  ele; int /*<<< orphan*/  ell; } ;
typedef  TYPE_2__ zsetopval ;
struct TYPE_15__ {scalar_t__ type; scalar_t__ encoding; TYPE_1__* subject; } ;
typedef  TYPE_3__ zsetopsrc ;
struct TYPE_16__ {struct TYPE_16__* dict; } ;
typedef  TYPE_4__ zset ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  TYPE_4__ dict ;
struct TYPE_13__ {TYPE_4__* ptr; } ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_INTSET ; 
 scalar_t__ OBJ_ENCODING_SKIPLIST ; 
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 scalar_t__ OBJ_SET ; 
 scalar_t__ OBJ_ZSET ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,double*) ; 

int FUNC7(zsetopsrc *op, zsetopval *val, double *score) {
    if (op->subject == NULL)
        return 0;

    if (op->type == OBJ_SET) {
        if (op->encoding == OBJ_ENCODING_INTSET) {
            if (FUNC4(val) &&
                FUNC2(op->subject->ptr,val->ell))
            {
                *score = 1.0;
                return 1;
            } else {
                return 0;
            }
        } else if (op->encoding == OBJ_ENCODING_HT) {
            dict *ht = op->subject->ptr;
            FUNC5(val);
            if (FUNC0(ht,val->ele) != NULL) {
                *score = 1.0;
                return 1;
            } else {
                return 0;
            }
        } else {
            FUNC3("Unknown set encoding");
        }
    } else if (op->type == OBJ_ZSET) {
        FUNC5(val);

        if (op->encoding == OBJ_ENCODING_ZIPLIST) {
            if (FUNC6(op->subject->ptr,val->ele,score) != NULL) {
                /* Score is already set by zzlFind. */
                return 1;
            } else {
                return 0;
            }
        } else if (op->encoding == OBJ_ENCODING_SKIPLIST) {
            zset *zs = op->subject->ptr;
            dictEntry *de;
            if ((de = FUNC0(zs->dict,val->ele)) != NULL) {
                *score = *(double*)FUNC1(de);
                return 1;
            } else {
                return 0;
            }
        } else {
            FUNC3("Unknown sorted set encoding");
        }
    } else {
        FUNC3("Unsupported type");
    }
}