
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t avail_out; char* msg; size_t total_out; int * next_out; int * next_in; void* opaque; void* zfree; void* zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef int uint8_t ;
typedef size_t uInt ;
typedef int Byte ;


 void* ZLIB_CHUNK ;
 int Z_NO_FLUSH ;
 void* Z_NULL ;
 int Z_OK ;
 int Z_STREAM_END ;
 int assert (int ) ;
 int fprintf (int ,char*,char*) ;
 int free (int *) ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit (TYPE_1__*) ;
 int * malloc (size_t) ;
 int * realloc (int *,size_t) ;
 int stderr ;

uint8_t *zlib_decompress(const uint8_t *buf, size_t *len)
{
 size_t output_size = ZLIB_CHUNK;
 uint8_t *output = malloc(output_size);
 int err;
 z_stream zst;


 if (output == ((void*)0)) return ((void*)0);
 assert(buf != ((void*)0));


 zst.zalloc = Z_NULL;
 zst.zfree = Z_NULL;
 zst.opaque = Z_NULL;
 zst.next_out = (Byte *)output;
 zst.next_in = (Byte *)buf;
 zst.avail_out = ZLIB_CHUNK;

 if (inflateInit(&zst) != Z_OK) goto error;


 do {
  if ((err = inflate(&zst, Z_NO_FLUSH)) == Z_OK) {
   zst.avail_out = (uInt)output_size;


   output_size <<= 1;
   output = realloc(output, output_size + 1);
   if (output == ((void*)0)) return ((void*)0);

   zst.next_out = (Byte *)(output + zst.avail_out);
  } else if (err != Z_STREAM_END) {
   if (zst.msg != ((void*)0)) {
    fprintf(stderr, "Could not decompress data: %s\n", zst.msg);
   }
   inflateEnd(&zst);
   goto error;
  }
 } while (err != Z_STREAM_END);

 if (len != ((void*)0)) *len = zst.total_out;
 if (inflateEnd(&zst) != Z_OK) goto error;
 return output;

error:
 if (output != ((void*)0)) free(output);
 return ((void*)0);
}
