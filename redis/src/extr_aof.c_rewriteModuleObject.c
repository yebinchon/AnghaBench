
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* ptr; } ;
typedef TYPE_1__ robj ;
typedef int rio ;
struct TYPE_13__ {int value; TYPE_3__* type; } ;
typedef TYPE_2__ moduleValue ;
struct TYPE_14__ {int (* aof_rewrite ) (TYPE_4__*,TYPE_1__*,int ) ;} ;
typedef TYPE_3__ moduleType ;
struct TYPE_15__ {scalar_t__ error; scalar_t__ ctx; } ;
typedef TYPE_4__ RedisModuleIO ;


 int moduleFreeContext (scalar_t__) ;
 int moduleInitIOContext (TYPE_4__,TYPE_3__*,int *,TYPE_1__*) ;
 int stub1 (TYPE_4__*,TYPE_1__*,int ) ;
 int zfree (scalar_t__) ;

int rewriteModuleObject(rio *r, robj *key, robj *o) {
    RedisModuleIO io;
    moduleValue *mv = o->ptr;
    moduleType *mt = mv->type;
    moduleInitIOContext(io,mt,r,key);
    mt->aof_rewrite(&io,key,mv->value);
    if (io.ctx) {
        moduleFreeContext(io.ctx);
        zfree(io.ctx);
    }
    return io.error ? 0 : 1;
}
