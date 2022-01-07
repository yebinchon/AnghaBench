
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int typestring_offset; int tfswrite; } ;
typedef TYPE_1__ type_t ;


 int FALSE ;

__attribute__((used)) static void guard_rec(type_t *type)
{



    if (type->typestring_offset)
        type->tfswrite = FALSE;
    else
        type->typestring_offset = 1;
}
