#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  di; } ;
struct TYPE_11__ {TYPE_1__ ht; } ;
struct TYPE_9__ {TYPE_4__ zset; TYPE_4__ set; } ;
struct TYPE_10__ {scalar_t__ type; scalar_t__ encoding; TYPE_2__ iter; int /*<<< orphan*/ * subject; } ;
typedef  TYPE_3__ zsetopsrc ;
typedef  TYPE_4__ iterzset ;
typedef  TYPE_4__ iterset ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_INTSET ; 
 scalar_t__ OBJ_ENCODING_SKIPLIST ; 
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 scalar_t__ OBJ_SET ; 
 scalar_t__ OBJ_ZSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(zsetopsrc *op) {
    if (op->subject == NULL)
        return;

    if (op->type == OBJ_SET) {
        iterset *it = &op->iter.set;
        if (op->encoding == OBJ_ENCODING_INTSET) {
            FUNC0(it); /* skip */
        } else if (op->encoding == OBJ_ENCODING_HT) {
            FUNC1(it->ht.di);
        } else {
            FUNC2("Unknown set encoding");
        }
    } else if (op->type == OBJ_ZSET) {
        iterzset *it = &op->iter.zset;
        if (op->encoding == OBJ_ENCODING_ZIPLIST) {
            FUNC0(it); /* skip */
        } else if (op->encoding == OBJ_ENCODING_SKIPLIST) {
            FUNC0(it); /* skip */
        } else {
            FUNC2("Unknown sorted set encoding");
        }
    } else {
        FUNC2("Unsupported type");
    }
}