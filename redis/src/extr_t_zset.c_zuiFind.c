
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int ele; int ell; } ;
typedef TYPE_2__ zsetopval ;
struct TYPE_15__ {scalar_t__ type; scalar_t__ encoding; TYPE_1__* subject; } ;
typedef TYPE_3__ zsetopsrc ;
struct TYPE_16__ {struct TYPE_16__* dict; } ;
typedef TYPE_4__ zset ;
typedef int dictEntry ;
typedef TYPE_4__ dict ;
struct TYPE_13__ {TYPE_4__* ptr; } ;


 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_INTSET ;
 scalar_t__ OBJ_ENCODING_SKIPLIST ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 scalar_t__ OBJ_SET ;
 scalar_t__ OBJ_ZSET ;
 int * dictFind (TYPE_4__*,int ) ;
 scalar_t__ dictGetVal (int *) ;
 scalar_t__ intsetFind (TYPE_4__*,int ) ;
 int serverPanic (char*) ;
 scalar_t__ zuiLongLongFromValue (TYPE_2__*) ;
 int zuiSdsFromValue (TYPE_2__*) ;
 int * zzlFind (TYPE_4__*,int ,double*) ;

int zuiFind(zsetopsrc *op, zsetopval *val, double *score) {
    if (op->subject == ((void*)0))
        return 0;

    if (op->type == OBJ_SET) {
        if (op->encoding == OBJ_ENCODING_INTSET) {
            if (zuiLongLongFromValue(val) &&
                intsetFind(op->subject->ptr,val->ell))
            {
                *score = 1.0;
                return 1;
            } else {
                return 0;
            }
        } else if (op->encoding == OBJ_ENCODING_HT) {
            dict *ht = op->subject->ptr;
            zuiSdsFromValue(val);
            if (dictFind(ht,val->ele) != ((void*)0)) {
                *score = 1.0;
                return 1;
            } else {
                return 0;
            }
        } else {
            serverPanic("Unknown set encoding");
        }
    } else if (op->type == OBJ_ZSET) {
        zuiSdsFromValue(val);

        if (op->encoding == OBJ_ENCODING_ZIPLIST) {
            if (zzlFind(op->subject->ptr,val->ele,score) != ((void*)0)) {

                return 1;
            } else {
                return 0;
            }
        } else if (op->encoding == OBJ_ENCODING_SKIPLIST) {
            zset *zs = op->subject->ptr;
            dictEntry *de;
            if ((de = dictFind(zs->dict,val->ele)) != ((void*)0)) {
                *score = *(double*)dictGetVal(de);
                return 1;
            } else {
                return 0;
            }
        } else {
            serverPanic("Unknown sorted set encoding");
        }
    } else {
        serverPanic("Unsupported type");
    }
}
