
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char type_align; int type_len; int type_storage; scalar_t__ type_by_val; } ;
typedef int Size ;
typedef int Pointer ;
typedef TYPE_1__ DatumSerializer ;
typedef int Datum ;


 int Assert (int) ;
 int DatumGetCString (int ) ;
 int DatumGetPointer (int ) ;
 int ERROR ;
 int SET_VARSIZE_SHORT (char*,int) ;
 scalar_t__ TYPE_IS_PACKABLE (int,int ) ;
 scalar_t__ VARATT_CAN_MAKE_SHORT (int ) ;
 int VARATT_CONVERTED_SHORT_SIZE (int ) ;
 scalar_t__ VARATT_IS_EXTERNAL (int ) ;
 scalar_t__ VARATT_IS_SHORT (int ) ;
 int VARDATA (int ) ;
 int VARSIZE (int ) ;
 int VARSIZE_SHORT (int ) ;
 char* align_and_zero (char*,char,int*) ;
 int check_allowed_data_len (int,int) ;
 int elog (int ,char*) ;
 int memcpy (char*,int ,int) ;
 int store_att_byval (char*,int ,int) ;
 int strlen (int ) ;

char *
datum_to_bytes_and_advance(DatumSerializer *serializer, char *ptr, Size *max_size, Datum datum)
{
 Size data_length;

 if (serializer->type_by_val)
 {

  ptr = align_and_zero(ptr, serializer->type_align, max_size);
  data_length = serializer->type_len;
  check_allowed_data_len(data_length, *max_size);
  store_att_byval(ptr, datum, data_length);
 }
 else if (serializer->type_len == -1)
 {

  Pointer val = DatumGetPointer(datum);

  if (VARATT_IS_EXTERNAL(val))
  {




   elog(ERROR, "datum should be detoasted before passed to datum_to_bytes_and_advance");
   data_length = 0;
  }
  else if (VARATT_IS_SHORT(val))
  {

   data_length = VARSIZE_SHORT(val);
   check_allowed_data_len(data_length, *max_size);
   memcpy(ptr, val, data_length);
  }
  else if (TYPE_IS_PACKABLE(serializer->type_len, serializer->type_storage) &&
     VARATT_CAN_MAKE_SHORT(val))
  {

   data_length = VARATT_CONVERTED_SHORT_SIZE(val);
   check_allowed_data_len(data_length, *max_size);
   SET_VARSIZE_SHORT(ptr, data_length);
   memcpy(ptr + 1, VARDATA(val), data_length - 1);
  }
  else
  {

   ptr = align_and_zero(ptr, serializer->type_align, max_size);
   data_length = VARSIZE(val);
   check_allowed_data_len(data_length, *max_size);
   memcpy(ptr, val, data_length);
  }
 }
 else if (serializer->type_len == -2)
 {

  Assert(serializer->type_align == 'c');
  data_length = strlen(DatumGetCString(datum)) + 1;
  check_allowed_data_len(data_length, *max_size);
  memcpy(ptr, DatumGetPointer(datum), data_length);
 }
 else
 {

  ptr = align_and_zero(ptr, serializer->type_align, max_size);
  Assert(serializer->type_len > 0);
  data_length = serializer->type_len;
  check_allowed_data_len(data_length, *max_size);
  memcpy(ptr, DatumGetPointer(datum), data_length);
 }

 ptr += data_length;
 *max_size = *max_size - data_length;

 return ptr;
}
