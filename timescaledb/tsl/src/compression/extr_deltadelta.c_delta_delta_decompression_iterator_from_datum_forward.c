
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base; } ;
typedef int Oid ;
typedef TYPE_1__ DeltaDeltaDecompressionIterator ;
typedef int DecompressionIterator ;
typedef int Datum ;


 scalar_t__ PG_DETOAST_DATUM (int ) ;
 int int64_decompression_iterator_init_forward (TYPE_1__*,void*,int ) ;
 TYPE_1__* palloc (int) ;

DecompressionIterator *
delta_delta_decompression_iterator_from_datum_forward(Datum deltadelta_compressed, Oid element_type)
{
 DeltaDeltaDecompressionIterator *iterator = palloc(sizeof(*iterator));
 int64_decompression_iterator_init_forward(iterator,
             (void *) PG_DETOAST_DATUM(deltadelta_compressed),
             element_type);
 return &iterator->base;
}
