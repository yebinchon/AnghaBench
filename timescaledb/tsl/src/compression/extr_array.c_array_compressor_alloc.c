
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int has_nulls; int serializer; int type; int data; int sizes; int nulls; } ;
typedef int Oid ;
typedef TYPE_1__ ArrayCompressor ;


 int CurrentMemoryContext ;
 int char_vec_init (int *,int ,int ) ;
 int create_datum_serializer (int ) ;
 TYPE_1__* palloc (int) ;
 int simple8brle_compressor_init (int *) ;

ArrayCompressor *
array_compressor_alloc(Oid type_to_compress)
{
 ArrayCompressor *compressor = palloc(sizeof(*compressor));
 compressor->has_nulls = 0;

 simple8brle_compressor_init(&compressor->nulls);
 simple8brle_compressor_init(&compressor->sizes);
 char_vec_init(&compressor->data, CurrentMemoryContext, 0);

 compressor->type = type_to_compress;
 compressor->serializer = create_datum_serializer(type_to_compress);
 return compressor;
}
