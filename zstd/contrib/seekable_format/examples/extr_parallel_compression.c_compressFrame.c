
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {size_t dstSize; int done; int compressionLevel; int srcSize; int src; int dst; int checksum; } ;


 int XXH64 (int ,int ,int ) ;
 size_t ZSTD_compress (int ,size_t,int ,int ,int ) ;
 char* ZSTD_getErrorName (size_t) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void compressFrame(void* opaque)
{
    struct job* job = opaque;

    job->checksum = XXH64(job->src, job->srcSize, 0);

    size_t ret = ZSTD_compress(job->dst, job->dstSize, job->src, job->srcSize, job->compressionLevel);
    if (ZSTD_isError(ret)) {
        fprintf(stderr, "ZSTD_compress() error : %s \n", ZSTD_getErrorName(ret));
        exit(20);
    }

    job->dstSize = ret;
    job->done = 1;
}
