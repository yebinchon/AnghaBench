
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ avail_in; unsigned char* next_in; scalar_t__ avail_out; unsigned char* next_out; void* opaque; void* zfree; void* zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef int FILE ;


 int CHUNK ;
 int Z_ERRNO ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 void* Z_NULL ;
 int Z_OK ;
 int Z_STREAM_END ;
 int Z_STREAM_ERROR ;
 int assert (int) ;
 int deflate (TYPE_1__*,int) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit (TYPE_1__*,int) ;
 scalar_t__ feof (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fread (unsigned char*,int,int,int *) ;
 unsigned int fwrite (unsigned char*,int,unsigned int,int *) ;

int def(FILE *source, FILE *dest, int level)
{
    int ret, flush;
    unsigned have;
    z_stream strm;
    unsigned char in[CHUNK];
    unsigned char out[CHUNK];


    strm.zalloc = Z_NULL;
    strm.zfree = Z_NULL;
    strm.opaque = Z_NULL;
    ret = deflateInit(&strm, level);
    if (ret != Z_OK)
        return ret;


    do {
        strm.avail_in = fread(in, 1, CHUNK, source);
        if (ferror(source)) {
            (void)deflateEnd(&strm);
            return Z_ERRNO;
        }
        flush = feof(source) ? Z_FINISH : Z_NO_FLUSH;
        strm.next_in = in;



        do {
            strm.avail_out = CHUNK;
            strm.next_out = out;
            ret = deflate(&strm, flush);
            assert(ret != Z_STREAM_ERROR);
            have = CHUNK - strm.avail_out;
            if (fwrite(out, 1, have, dest) != have || ferror(dest)) {
                (void)deflateEnd(&strm);
                return Z_ERRNO;
            }
        } while (strm.avail_out == 0);
        assert(strm.avail_in == 0);


    } while (flush != Z_FINISH);
    assert(ret == Z_STREAM_END);


    (void)deflateEnd(&strm);
    return Z_OK;
}
