
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tfswrite; scalar_t__ typestring_offset; } ;
typedef TYPE_1__ type_t ;



__attribute__((used)) static int processed(const type_t *type)
{
    return type->typestring_offset && !type->tfswrite;
}
