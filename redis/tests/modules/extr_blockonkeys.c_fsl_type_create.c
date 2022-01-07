
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; } ;
typedef TYPE_1__ fsl_t ;


 TYPE_1__* RedisModule_Alloc (int) ;

fsl_t *fsl_type_create() {
    fsl_t *o;
    o = RedisModule_Alloc(sizeof(*o));
    o->length = 0;
    return o;
}
