
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base; } ;
typedef int Oid ;
typedef TYPE_1__ DictionaryDecompressionIterator ;
typedef int DecompressionIterator ;
typedef int Datum ;


 scalar_t__ PG_DETOAST_DATUM (int ) ;
 int dictionary_decompression_iterator_init (TYPE_1__*,void*,int,int ) ;
 TYPE_1__* palloc (int) ;

DecompressionIterator *
tsl_dictionary_decompression_iterator_from_datum_reverse(Datum dictionary_compressed,
               Oid element_type)
{
 DictionaryDecompressionIterator *iterator = palloc(sizeof(*iterator));
 dictionary_decompression_iterator_init(iterator,
             (void *) PG_DETOAST_DATUM(dictionary_compressed),
             0,
             element_type);
 return &iterator->base;
}
