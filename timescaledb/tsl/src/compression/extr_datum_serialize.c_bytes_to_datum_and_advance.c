
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type_len; int type_by_val; int type_align; } ;
typedef char* Pointer ;
typedef TYPE_1__ DatumDeserializer ;
typedef int Datum ;


 char* att_addlength_pointer (char const*,int ,char const*) ;
 scalar_t__ att_align_pointer (char const*,int ,int ,char const*) ;
 int fetch_att (char const*,int ,int ) ;

Datum
bytes_to_datum_and_advance(DatumDeserializer *deserializer, const char **ptr)
{
 Datum res;







 *ptr =
  (Pointer) att_align_pointer(*ptr, deserializer->type_align, deserializer->type_len, *ptr);
 res = fetch_att(*ptr, deserializer->type_by_val, deserializer->type_len);
 *ptr = att_addlength_pointer(*ptr, deserializer->type_len, *ptr);
 return res;
}
