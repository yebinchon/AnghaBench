
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int ell; int elen; scalar_t__ estr; int * ele; } ;
typedef TYPE_1__ zsetopval ;
typedef int * sds ;


 int OPVAL_DIRTY_SDS ;
 int * sdsdup (int *) ;
 int * sdsfromlonglong (int ) ;
 int * sdsnewlen (char*,int ) ;

sds zuiNewSdsFromValue(zsetopval *val) {
    if (val->flags & OPVAL_DIRTY_SDS) {

        sds ele = val->ele;
        val->flags &= ~OPVAL_DIRTY_SDS;
        val->ele = ((void*)0);
        return ele;
    } else if (val->ele) {
        return sdsdup(val->ele);
    } else if (val->estr) {
        return sdsnewlen((char*)val->estr,val->elen);
    } else {
        return sdsfromlonglong(val->ell);
    }
}
