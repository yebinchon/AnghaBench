
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; scalar_t__ biggest_key; } ;
typedef TYPE_1__ typeinfo ;


 int UNUSED (void*) ;
 int sdsfree (scalar_t__) ;
 int zfree (TYPE_1__*) ;

void type_free(void* priv_data, void* val) {
    typeinfo *info = val;
    UNUSED(priv_data);
    if (info->biggest_key)
        sdsfree(info->biggest_key);
    sdsfree(info->name);
    zfree(info);
}
