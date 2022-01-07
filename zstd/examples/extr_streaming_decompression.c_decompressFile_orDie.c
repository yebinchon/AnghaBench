
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* const member_0; size_t const member_1; int pos; int member_2; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {void* const member_0; size_t member_1; scalar_t__ pos; scalar_t__ size; int member_2; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
typedef int ZSTD_DCtx ;
typedef int FILE ;


 int CHECK (int ,char*) ;
 int CHECK_ZSTD (size_t const) ;
 size_t ZSTD_DStreamInSize () ;
 size_t ZSTD_DStreamOutSize () ;
 int * ZSTD_createDCtx () ;
 size_t ZSTD_decompressStream (int * const,TYPE_1__*,TYPE_2__*) ;
 int ZSTD_freeDCtx (int * const) ;
 int exit (int) ;
 int fclose_orDie (int * const) ;
 int * fopen_orDie (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread_orDie (void* const,size_t const,int * const) ;
 int free (void* const) ;
 int fwrite_orDie (void* const,int ,int * const) ;
 void* malloc_orDie (size_t const) ;
 int stderr ;
 int * stdout ;

__attribute__((used)) static void decompressFile_orDie(const char* fname)
{
    FILE* const fin = fopen_orDie(fname, "rb");
    size_t const buffInSize = ZSTD_DStreamInSize();
    void* const buffIn = malloc_orDie(buffInSize);
    FILE* const fout = stdout;
    size_t const buffOutSize = ZSTD_DStreamOutSize();
    void* const buffOut = malloc_orDie(buffOutSize);

    ZSTD_DCtx* const dctx = ZSTD_createDCtx();
    CHECK(dctx != ((void*)0), "ZSTD_createDCtx() failed!");







    size_t const toRead = buffInSize;
    size_t read;
    size_t lastRet = 0;
    int isEmpty = 1;
    while ( (read = fread_orDie(buffIn, toRead, fin)) ) {
        isEmpty = 0;
        ZSTD_inBuffer input = { buffIn, read, 0 };





        while (input.pos < input.size) {
            ZSTD_outBuffer output = { buffOut, buffOutSize, 0 };







            size_t const ret = ZSTD_decompressStream(dctx, &output , &input);
            CHECK_ZSTD(ret);
            fwrite_orDie(buffOut, output.pos, fout);
            lastRet = ret;
        }
    }

    if (isEmpty) {
        fprintf(stderr, "input is empty\n");
        exit(1);
    }

    if (lastRet != 0) {




        fprintf(stderr, "EOF before end of stream: %zu\n", lastRet);
        exit(1);
    }

    ZSTD_freeDCtx(dctx);
    fclose_orDie(fin);
    fclose_orDie(fout);
    free(buffIn);
    free(buffOut);
}
