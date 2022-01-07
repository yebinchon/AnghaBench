
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ele; int flags; int ell; int elen; int * estr; } ;
typedef TYPE_1__ zsetopval ;
typedef int * sds ;


 int OPVAL_DIRTY_SDS ;
 int * sdsfromlonglong (int ) ;
 int * sdsnewlen (char*,int ) ;

sds zuiSdsFromValue(zsetopval *val) {
    if (val->ele == ((void*)0)) {
        if (val->estr != ((void*)0)) {
            val->ele = sdsnewlen((char*)val->estr,val->elen);
        } else {
            val->ele = sdsfromlonglong(val->ell);
        }
        val->flags |= OPVAL_DIRTY_SDS;
    }
    return val->ele;
}
