
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_29__ {TYPE_14__* zs; int node; } ;
struct TYPE_24__ {int * sptr; int * eptr; TYPE_14__* zl; } ;
struct TYPE_18__ {TYPE_9__ sl; TYPE_4__ zl; } ;
struct TYPE_22__ {int di; int de; TYPE_14__* dict; } ;
struct TYPE_21__ {scalar_t__ ii; TYPE_14__* is; } ;
struct TYPE_19__ {TYPE_2__ ht; TYPE_1__ is; } ;
struct TYPE_23__ {TYPE_11__ zset; TYPE_12__ set; } ;
struct TYPE_17__ {scalar_t__ type; scalar_t__ encoding; TYPE_5__* subject; TYPE_3__ iter; } ;
typedef TYPE_10__ zsetopsrc ;
typedef TYPE_11__ iterzset ;
typedef TYPE_12__ iterset ;
struct TYPE_28__ {TYPE_7__* header; } ;
struct TYPE_27__ {TYPE_6__* level; } ;
struct TYPE_26__ {int forward; } ;
struct TYPE_25__ {TYPE_14__* ptr; } ;
struct TYPE_20__ {TYPE_8__* zsl; } ;


 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_INTSET ;
 scalar_t__ OBJ_ENCODING_SKIPLIST ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 scalar_t__ OBJ_SET ;
 scalar_t__ OBJ_ZSET ;
 int dictGetIterator (TYPE_14__*) ;
 int dictNext (int ) ;
 int serverAssert (int ) ;
 int serverPanic (char*) ;
 int * ziplistIndex (TYPE_14__*,int ) ;
 int * ziplistNext (TYPE_14__*,int *) ;

void zuiInitIterator(zsetopsrc *op) {
    if (op->subject == ((void*)0))
        return;

    if (op->type == OBJ_SET) {
        iterset *it = &op->iter.set;
        if (op->encoding == OBJ_ENCODING_INTSET) {
            it->is.is = op->subject->ptr;
            it->is.ii = 0;
        } else if (op->encoding == OBJ_ENCODING_HT) {
            it->ht.dict = op->subject->ptr;
            it->ht.di = dictGetIterator(op->subject->ptr);
            it->ht.de = dictNext(it->ht.di);
        } else {
            serverPanic("Unknown set encoding");
        }
    } else if (op->type == OBJ_ZSET) {
        iterzset *it = &op->iter.zset;
        if (op->encoding == OBJ_ENCODING_ZIPLIST) {
            it->zl.zl = op->subject->ptr;
            it->zl.eptr = ziplistIndex(it->zl.zl,0);
            if (it->zl.eptr != ((void*)0)) {
                it->zl.sptr = ziplistNext(it->zl.zl,it->zl.eptr);
                serverAssert(it->zl.sptr != ((void*)0));
            }
        } else if (op->encoding == OBJ_ENCODING_SKIPLIST) {
            it->sl.zs = op->subject->ptr;
            it->sl.node = it->sl.zs->zsl->header->level[0].forward;
        } else {
            serverPanic("Unknown sorted set encoding");
        }
    } else {
        serverPanic("Unsupported type");
    }
}
