
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int typestring_offset; int tfswrite; } ;
typedef TYPE_1__ type_t ;
typedef int FILE ;


 int FALSE ;

__attribute__((used)) static void update_tfsoff(type_t *type, unsigned int offset, FILE *file)
{
    type->typestring_offset = offset;
    if (file) type->tfswrite = FALSE;
}
