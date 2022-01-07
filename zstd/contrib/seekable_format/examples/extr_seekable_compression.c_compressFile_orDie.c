
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ZSTD_seekable_CStream ;
struct TYPE_6__ {void* const member_0; size_t const member_1; int pos; int member_2; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_7__ {void* const member_0; size_t member_1; scalar_t__ pos; scalar_t__ size; int member_2; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
typedef int FILE ;


 size_t ZSTD_CStreamInSize () ;
 size_t ZSTD_CStreamOutSize () ;
 char* ZSTD_getErrorName (size_t const) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 size_t ZSTD_seekable_compressStream (int * const,TYPE_1__*,TYPE_2__*) ;
 int * ZSTD_seekable_createCStream () ;
 size_t ZSTD_seekable_endStream (int * const,TYPE_1__*) ;
 int ZSTD_seekable_freeCStream (int * const) ;
 size_t ZSTD_seekable_initCStream (int * const,int,int,unsigned int) ;
 int exit (int) ;
 int fclose_orDie (int * const) ;
 int * fopen_orDie (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread_orDie (void* const,size_t,int * const) ;
 int free (void* const) ;
 int fwrite_orDie (void* const,int ,int * const) ;
 void* malloc_orDie (size_t const) ;
 int stderr ;

__attribute__((used)) static void compressFile_orDie(const char* fname, const char* outName, int cLevel, unsigned frameSize)
{
    FILE* const fin = fopen_orDie(fname, "rb");
    FILE* const fout = fopen_orDie(outName, "wb");
    size_t const buffInSize = ZSTD_CStreamInSize();
    void* const buffIn = malloc_orDie(buffInSize);
    size_t const buffOutSize = ZSTD_CStreamOutSize();
    void* const buffOut = malloc_orDie(buffOutSize);

    ZSTD_seekable_CStream* const cstream = ZSTD_seekable_createCStream();
    if (cstream==((void*)0)) { fprintf(stderr, "ZSTD_seekable_createCStream() error \n"); exit(10); }
    size_t const initResult = ZSTD_seekable_initCStream(cstream, cLevel, 1, frameSize);
    if (ZSTD_isError(initResult)) { fprintf(stderr, "ZSTD_seekable_initCStream() error : %s \n", ZSTD_getErrorName(initResult)); exit(11); }

    size_t read, toRead = buffInSize;
    while( (read = fread_orDie(buffIn, toRead, fin)) ) {
        ZSTD_inBuffer input = { buffIn, read, 0 };
        while (input.pos < input.size) {
            ZSTD_outBuffer output = { buffOut, buffOutSize, 0 };
            toRead = ZSTD_seekable_compressStream(cstream, &output , &input);
            if (ZSTD_isError(toRead)) { fprintf(stderr, "ZSTD_seekable_compressStream() error : %s \n", ZSTD_getErrorName(toRead)); exit(12); }
            if (toRead > buffInSize) toRead = buffInSize;
            fwrite_orDie(buffOut, output.pos, fout);
        }
    }

    while (1) {
        ZSTD_outBuffer output = { buffOut, buffOutSize, 0 };
        size_t const remainingToFlush = ZSTD_seekable_endStream(cstream, &output);
        if (ZSTD_isError(remainingToFlush)) { fprintf(stderr, "ZSTD_seekable_endStream() error : %s \n", ZSTD_getErrorName(remainingToFlush)); exit(13); }
        fwrite_orDie(buffOut, output.pos, fout);
        if (!remainingToFlush) break;
    }

    ZSTD_seekable_freeCStream(cstream);
    fclose_orDie(fout);
    fclose_orDie(fin);
    free(buffIn);
    free(buffOut);
}
