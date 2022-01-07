
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type_len; int type_align; int type_storage; } ;
typedef int Size ;
typedef int Pointer ;
typedef TYPE_1__ DatumSerializer ;
typedef int Datum ;


 int DatumGetPointer (int ) ;
 int ERROR ;
 scalar_t__ TYPE_IS_PACKABLE (int,int ) ;
 scalar_t__ VARATT_CAN_MAKE_SHORT (int ) ;
 scalar_t__ VARATT_CONVERTED_SHORT_SIZE (int ) ;
 scalar_t__ VARATT_IS_EXTERNAL (int ) ;
 int att_addlength_datum (int ,int,int ) ;
 int att_align_datum (int ,int ,int,int ) ;
 int elog (int ,char*) ;

Size
datum_get_bytes_size(DatumSerializer *serializer, Size start_offset, Datum val)
{
 Size data_length = start_offset;

 if (serializer->type_len == -1)
 {

  Pointer ptr = DatumGetPointer(val);

  if (VARATT_IS_EXTERNAL(ptr))
  {




   elog(ERROR, "datum should be detoasted before passed to datum_get_bytes_size");
  }
 }

 if (TYPE_IS_PACKABLE(serializer->type_len, serializer->type_storage) &&
  VARATT_CAN_MAKE_SHORT(DatumGetPointer(val)))
 {





  data_length += VARATT_CONVERTED_SHORT_SIZE(DatumGetPointer(val));
 }
 else
 {
  data_length =
   att_align_datum(data_length, serializer->type_align, serializer->type_len, val);
  data_length = att_addlength_datum(data_length, serializer->type_len, val);
 }

 return data_length;
}
