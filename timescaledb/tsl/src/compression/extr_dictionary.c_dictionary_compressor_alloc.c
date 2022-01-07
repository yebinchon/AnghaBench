
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int typalign; int typbyval; int typlen; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_8__ {int has_nulls; int nulls; int dictionary_indexes; int dictionary_items; int typalign; int typbyval; int typlen; int type; scalar_t__ next_index; } ;
typedef int Oid ;
typedef TYPE_2__ DictionaryCompressor ;


 int TYPECACHE_EQ_OPR_FINFO ;
 int TYPECACHE_HASH_PROC_FINFO ;
 int dictionary_hash_alloc (TYPE_1__*) ;
 TYPE_1__* lookup_type_cache (int ,int) ;
 TYPE_2__* palloc (int) ;
 int simple8brle_compressor_init (int *) ;

DictionaryCompressor *
dictionary_compressor_alloc(Oid type)
{
 DictionaryCompressor *compressor = palloc(sizeof(*compressor));
 TypeCacheEntry *tentry =
  lookup_type_cache(type, TYPECACHE_EQ_OPR_FINFO | TYPECACHE_HASH_PROC_FINFO);

 compressor->next_index = 0;
 compressor->has_nulls = 0;
 compressor->type = type;
 compressor->typlen = tentry->typlen;
 compressor->typbyval = tentry->typbyval;
 compressor->typalign = tentry->typalign;

 compressor->dictionary_items = dictionary_hash_alloc(tentry);

 simple8brle_compressor_init(&compressor->dictionary_indexes);
 simple8brle_compressor_init(&compressor->nulls);
 return compressor;
}
