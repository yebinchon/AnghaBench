
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* msg; size_t total_out; void* avail_in; int * next_in; int * next_out; void* zfree; void* zalloc; void* avail_out; } ;
typedef TYPE_1__ z_stream ;
typedef int uint8_t ;
typedef void* uInt ;
typedef int Byte ;


 int Z_FINISH ;
 void* Z_NULL ;
 scalar_t__ Z_OK ;
 scalar_t__ Z_STREAM_END ;
 int assert (int) ;
 scalar_t__ deflate (TYPE_1__*,int ) ;
 scalar_t__ deflateEnd (TYPE_1__*) ;
 scalar_t__ deflateInit (TYPE_1__*,int) ;
 int fprintf (int ,char*,char*) ;
 int free (int *) ;
 int * malloc (void*) ;
 int stderr ;

uint8_t *zlib_compress(const uint8_t *buf, const size_t buflen, int level,
                       size_t *len)
{
 z_stream zst;
 uint8_t *output = ((void*)0);


 assert(buf != ((void*)0));
 assert(len != ((void*)0));
 assert(level <= 9 && level >= 0);

 zst.avail_out = (uInt)((buflen + (buflen / 10)) + 12);
 output = malloc(zst.avail_out);
 if (output == ((void*)0)) return ((void*)0);


 zst.zalloc = Z_NULL;
 zst.zfree = Z_NULL;
 zst.next_out = (Byte *)output;
 zst.next_in = (Byte *)buf;
 zst.avail_in = (uInt)buflen;

 if (deflateInit(&zst, level) != Z_OK) goto error;


 if (deflate(&zst, Z_FINISH) != Z_STREAM_END) {
  if (zst.msg != ((void*)0)) {
   fprintf(stderr, "Could not compress data: %s\n", zst.msg);
  }
  deflateEnd(&zst);
  goto error;
 }

 if (len != ((void*)0)) *len = zst.total_out;
 if (deflateEnd(&zst) != Z_OK) goto error;
 return output;

error:
 if (output != ((void*)0)) free(output);
 return ((void*)0);
}
