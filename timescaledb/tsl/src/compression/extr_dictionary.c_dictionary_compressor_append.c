
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int next_index; int nulls; int dictionary_indexes; int typlen; int typbyval; int dictionary_items; } ;
struct TYPE_5__ {int index; int key; } ;
typedef TYPE_1__ DictionaryHashItem ;
typedef TYPE_2__ DictionaryCompressor ;
typedef int Datum ;


 int Assert (int ) ;
 int datumCopy (int ,int ,int ) ;
 TYPE_1__* dictionary_insert (int ,int ,int*) ;
 int simple8brle_compressor_append (int *,int) ;

void
dictionary_compressor_append(DictionaryCompressor *compressor, Datum val)
{
 bool found;
 DictionaryHashItem *dict_item;

 Assert(compressor != ((void*)0));

 dict_item = dictionary_insert(compressor->dictionary_items, val, &found);

 if (!found)
 {

  dict_item->index = compressor->next_index;
  dict_item->key = datumCopy(val, compressor->typbyval, compressor->typlen);
  compressor->next_index += 1;
 }

 simple8brle_compressor_append(&compressor->dictionary_indexes, dict_item->index);
 simple8brle_compressor_append(&compressor->nulls, 0);
}
