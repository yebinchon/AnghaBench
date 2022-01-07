
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_24__ {int flags; double score; int ele; int ell; int elen; int estr; } ;
typedef TYPE_8__ zsetopval ;
struct TYPE_23__ {TYPE_6__* node; } ;
struct TYPE_20__ {int * sptr; int * eptr; int zl; } ;
struct TYPE_15__ {TYPE_7__ sl; TYPE_4__ zl; } ;
struct TYPE_18__ {int di; int * de; } ;
struct TYPE_17__ {int ii; int is; } ;
struct TYPE_16__ {TYPE_2__ ht; TYPE_1__ is; } ;
struct TYPE_19__ {TYPE_10__ zset; TYPE_11__ set; } ;
struct TYPE_25__ {scalar_t__ type; scalar_t__ encoding; TYPE_3__ iter; int * subject; } ;
typedef TYPE_9__ zsetopsrc ;
typedef TYPE_10__ iterzset ;
typedef TYPE_11__ iterset ;
typedef int int64_t ;
struct TYPE_22__ {double score; TYPE_5__* level; int ele; } ;
struct TYPE_21__ {TYPE_6__* forward; } ;


 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_INTSET ;
 scalar_t__ OBJ_ENCODING_SKIPLIST ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 scalar_t__ OBJ_SET ;
 scalar_t__ OBJ_ZSET ;
 int OPVAL_DIRTY_SDS ;
 int dictGetKey (int *) ;
 int * dictNext (int ) ;
 int intsetGet (int ,int ,int *) ;
 int memset (TYPE_8__*,int ,int) ;
 int sdsfree (int ) ;
 int serverAssert (int ) ;
 int serverPanic (char*) ;
 int ziplistGet (int *,int *,int *,int *) ;
 double zzlGetScore (int *) ;
 int zzlNext (int ,int **,int **) ;

int zuiNext(zsetopsrc *op, zsetopval *val) {
    if (op->subject == ((void*)0))
        return 0;

    if (val->flags & OPVAL_DIRTY_SDS)
        sdsfree(val->ele);

    memset(val,0,sizeof(zsetopval));

    if (op->type == OBJ_SET) {
        iterset *it = &op->iter.set;
        if (op->encoding == OBJ_ENCODING_INTSET) {
            int64_t ell;

            if (!intsetGet(it->is.is,it->is.ii,&ell))
                return 0;
            val->ell = ell;
            val->score = 1.0;


            it->is.ii++;
        } else if (op->encoding == OBJ_ENCODING_HT) {
            if (it->ht.de == ((void*)0))
                return 0;
            val->ele = dictGetKey(it->ht.de);
            val->score = 1.0;


            it->ht.de = dictNext(it->ht.di);
        } else {
            serverPanic("Unknown set encoding");
        }
    } else if (op->type == OBJ_ZSET) {
        iterzset *it = &op->iter.zset;
        if (op->encoding == OBJ_ENCODING_ZIPLIST) {

            if (it->zl.eptr == ((void*)0) || it->zl.sptr == ((void*)0))
                return 0;
            serverAssert(ziplistGet(it->zl.eptr,&val->estr,&val->elen,&val->ell));
            val->score = zzlGetScore(it->zl.sptr);


            zzlNext(it->zl.zl,&it->zl.eptr,&it->zl.sptr);
        } else if (op->encoding == OBJ_ENCODING_SKIPLIST) {
            if (it->sl.node == ((void*)0))
                return 0;
            val->ele = it->sl.node->ele;
            val->score = it->sl.node->score;


            it->sl.node = it->sl.node->level[0].forward;
        } else {
            serverPanic("Unknown sorted set encoding");
        }
    } else {
        serverPanic("Unsupported type");
    }
    return 1;
}
