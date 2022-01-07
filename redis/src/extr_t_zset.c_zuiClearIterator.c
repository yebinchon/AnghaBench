
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int di; } ;
struct TYPE_11__ {TYPE_1__ ht; } ;
struct TYPE_9__ {TYPE_4__ zset; TYPE_4__ set; } ;
struct TYPE_10__ {scalar_t__ type; scalar_t__ encoding; TYPE_2__ iter; int * subject; } ;
typedef TYPE_3__ zsetopsrc ;
typedef TYPE_4__ iterzset ;
typedef TYPE_4__ iterset ;


 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_INTSET ;
 scalar_t__ OBJ_ENCODING_SKIPLIST ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 scalar_t__ OBJ_SET ;
 scalar_t__ OBJ_ZSET ;
 int UNUSED (TYPE_4__*) ;
 int dictReleaseIterator (int ) ;
 int serverPanic (char*) ;

void zuiClearIterator(zsetopsrc *op) {
    if (op->subject == ((void*)0))
        return;

    if (op->type == OBJ_SET) {
        iterset *it = &op->iter.set;
        if (op->encoding == OBJ_ENCODING_INTSET) {
            UNUSED(it);
        } else if (op->encoding == OBJ_ENCODING_HT) {
            dictReleaseIterator(it->ht.di);
        } else {
            serverPanic("Unknown set encoding");
        }
    } else if (op->type == OBJ_ZSET) {
        iterzset *it = &op->iter.zset;
        if (op->encoding == OBJ_ENCODING_ZIPLIST) {
            UNUSED(it);
        } else if (op->encoding == OBJ_ENCODING_SKIPLIST) {
            UNUSED(it);
        } else {
            serverPanic("Unknown sorted set encoding");
        }
    } else {
        serverPanic("Unsupported type");
    }
}
