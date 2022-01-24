#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ type; scalar_t__ encoding; TYPE_2__* subject; } ;
typedef  TYPE_3__ zsetopsrc ;
struct TYPE_13__ {TYPE_1__* zsl; } ;
typedef  TYPE_4__ zset ;
typedef  TYPE_4__ dict ;
struct TYPE_11__ {TYPE_4__* ptr; } ;
struct TYPE_10__ {unsigned long length; } ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_INTSET ; 
 scalar_t__ OBJ_ENCODING_SKIPLIST ; 
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 scalar_t__ OBJ_SET ; 
 scalar_t__ OBJ_ZSET ; 
 unsigned long FUNC0 (TYPE_4__*) ; 
 unsigned long FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 unsigned long FUNC3 (TYPE_4__*) ; 

unsigned long FUNC4(zsetopsrc *op) {
    if (op->subject == NULL)
        return 0;

    if (op->type == OBJ_SET) {
        if (op->encoding == OBJ_ENCODING_INTSET) {
            return FUNC1(op->subject->ptr);
        } else if (op->encoding == OBJ_ENCODING_HT) {
            dict *ht = op->subject->ptr;
            return FUNC0(ht);
        } else {
            FUNC2("Unknown set encoding");
        }
    } else if (op->type == OBJ_ZSET) {
        if (op->encoding == OBJ_ENCODING_ZIPLIST) {
            return FUNC3(op->subject->ptr);
        } else if (op->encoding == OBJ_ENCODING_SKIPLIST) {
            zset *zs = op->subject->ptr;
            return zs->zsl->length;
        } else {
            FUNC2("Unknown sorted set encoding");
        }
    } else {
        FUNC2("Unsupported type");
    }
}