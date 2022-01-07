
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num_elements; char* data; } ;
struct TYPE_4__ {int serializer; TYPE_2__ data; int sizes; int nulls; } ;
typedef scalar_t__ Size ;
typedef int Datum ;
typedef TYPE_1__ ArrayCompressor ;


 int Assert (int) ;
 int PG_DETOAST_DATUM_PACKED (int ) ;
 int PointerGetDatum (int ) ;
 int char_vec_reserve (TYPE_2__*,scalar_t__) ;
 scalar_t__ datum_get_bytes_size (int ,scalar_t__,int ) ;
 scalar_t__ datum_serializer_value_may_be_toasted (int ) ;
 int datum_to_bytes_and_advance (int ,char*,scalar_t__*,int ) ;
 int simple8brle_compressor_append (int *,scalar_t__) ;

void
array_compressor_append(ArrayCompressor *compressor, Datum val)
{
 Size datum_size_and_align;
 char *start_ptr;
 simple8brle_compressor_append(&compressor->nulls, 0);
 if (datum_serializer_value_may_be_toasted(compressor->serializer))
  val = PointerGetDatum(PG_DETOAST_DATUM_PACKED(val));

 datum_size_and_align =
  datum_get_bytes_size(compressor->serializer, compressor->data.num_elements, val) -
  compressor->data.num_elements;

 simple8brle_compressor_append(&compressor->sizes, datum_size_and_align);


 char_vec_reserve(&compressor->data, datum_size_and_align);
 start_ptr = compressor->data.data + compressor->data.num_elements;
 compressor->data.num_elements += datum_size_and_align;

 datum_to_bytes_and_advance(compressor->serializer, start_ptr, &datum_size_and_align, val);
 Assert(datum_size_and_align == 0);
}
