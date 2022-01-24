#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {int flags; double score; int /*<<< orphan*/  ele; int /*<<< orphan*/  ell; int /*<<< orphan*/  elen; int /*<<< orphan*/  estr; } ;
typedef  TYPE_8__ zsetopval ;
struct TYPE_23__ {TYPE_6__* node; } ;
struct TYPE_20__ {int /*<<< orphan*/ * sptr; int /*<<< orphan*/ * eptr; int /*<<< orphan*/  zl; } ;
struct TYPE_15__ {TYPE_7__ sl; TYPE_4__ zl; } ;
struct TYPE_18__ {int /*<<< orphan*/  di; int /*<<< orphan*/ * de; } ;
struct TYPE_17__ {int /*<<< orphan*/  ii; int /*<<< orphan*/  is; } ;
struct TYPE_16__ {TYPE_2__ ht; TYPE_1__ is; } ;
struct TYPE_19__ {TYPE_10__ zset; TYPE_11__ set; } ;
struct TYPE_25__ {scalar_t__ type; scalar_t__ encoding; TYPE_3__ iter; int /*<<< orphan*/ * subject; } ;
typedef  TYPE_9__ zsetopsrc ;
typedef  TYPE_10__ iterzset ;
typedef  TYPE_11__ iterset ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_22__ {double score; TYPE_5__* level; int /*<<< orphan*/  ele; } ;
struct TYPE_21__ {TYPE_6__* forward; } ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_INTSET ; 
 scalar_t__ OBJ_ENCODING_SKIPLIST ; 
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 scalar_t__ OBJ_SET ; 
 scalar_t__ OBJ_ZSET ; 
 int OPVAL_DIRTY_SDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

int FUNC10(zsetopsrc *op, zsetopval *val) {
    if (op->subject == NULL)
        return 0;

    if (val->flags & OPVAL_DIRTY_SDS)
        FUNC4(val->ele);

    FUNC3(val,0,sizeof(zsetopval));

    if (op->type == OBJ_SET) {
        iterset *it = &op->iter.set;
        if (op->encoding == OBJ_ENCODING_INTSET) {
            int64_t ell;

            if (!FUNC2(it->is.is,it->is.ii,&ell))
                return 0;
            val->ell = ell;
            val->score = 1.0;

            /* Move to next element. */
            it->is.ii++;
        } else if (op->encoding == OBJ_ENCODING_HT) {
            if (it->ht.de == NULL)
                return 0;
            val->ele = FUNC0(it->ht.de);
            val->score = 1.0;

            /* Move to next element. */
            it->ht.de = FUNC1(it->ht.di);
        } else {
            FUNC6("Unknown set encoding");
        }
    } else if (op->type == OBJ_ZSET) {
        iterzset *it = &op->iter.zset;
        if (op->encoding == OBJ_ENCODING_ZIPLIST) {
            /* No need to check both, but better be explicit. */
            if (it->zl.eptr == NULL || it->zl.sptr == NULL)
                return 0;
            FUNC5(FUNC7(it->zl.eptr,&val->estr,&val->elen,&val->ell));
            val->score = FUNC8(it->zl.sptr);

            /* Move to next element. */
            FUNC9(it->zl.zl,&it->zl.eptr,&it->zl.sptr);
        } else if (op->encoding == OBJ_ENCODING_SKIPLIST) {
            if (it->sl.node == NULL)
                return 0;
            val->ele = it->sl.node->ele;
            val->score = it->sl.node->score;

            /* Move to next element. */
            it->sl.node = it->sl.node->level[0].forward;
        } else {
            FUNC6("Unknown sorted set encoding");
        }
    } else {
        FUNC6("Unsupported type");
    }
    return 1;
}