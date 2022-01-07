
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fast_chunk ;
struct TYPE_4__ {scalar_t__ len; int* data; int refcount; } ;
typedef TYPE_1__ compressed_chunk ;


 int assert (int) ;
 int deref_compressed_chunk (TYPE_1__*) ;
 int free (unsigned char*) ;
 TYPE_1__* get_compressed_chunk (int,int) ;
 int lock_chunk_get_mutex () ;
 int * minecraft_chunk_parse (unsigned char*,int) ;
 int nbt_parse_uint32 (int*) ;
 unsigned char* stbi_zlib_decode_malloc_guesssize (int*,int,int,int*) ;
 int unlock_chunk_get_mutex () ;

fast_chunk *get_decoded_fastchunk_uncached(int chunk_x, int chunk_z)
{
   unsigned char *decoded;
   compressed_chunk *cc;
   int inlen;
   int len;
   fast_chunk *fc;

   lock_chunk_get_mutex();
   cc = get_compressed_chunk(chunk_x, chunk_z);
   if (cc->len != 0)
      ++cc->refcount;
   unlock_chunk_get_mutex();

   if (cc->len == 0)
      return ((void*)0);

   assert(cc != ((void*)0));

   assert(cc->data[4] == 2);

   inlen = nbt_parse_uint32(cc->data);
   decoded = stbi_zlib_decode_malloc_guesssize(cc->data+5, inlen, inlen*3, &len);
   assert(decoded != ((void*)0));
   assert(len != 0);

   lock_chunk_get_mutex();
   deref_compressed_chunk(cc);
   unlock_chunk_get_mutex();




   fc = ((void*)0);

   if (fc == ((void*)0))
      free(decoded);
   return fc;
}
