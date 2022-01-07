
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type_len; } ;
typedef TYPE_1__ DatumSerializer ;



bool
datum_serializer_value_may_be_toasted(DatumSerializer *serializer)
{
 return serializer->type_len == -1;
}
