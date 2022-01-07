
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t buffInSize; int buffOut; int cctx; int buffOutSize; int buffIn; } ;
typedef TYPE_1__ resources ;
struct TYPE_8__ {int pos; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ ZSTD_outBuffer ;
struct TYPE_9__ {size_t member_1; scalar_t__ pos; scalar_t__ size; int member_2; int member_0; } ;
typedef TYPE_3__ ZSTD_inBuffer ;
typedef int ZSTD_EndDirective ;
typedef int FILE ;


 int CHECK (int,char*) ;
 int CHECK_ZSTD (size_t const) ;
 size_t const ZSTD_CCtx_reset (int ,int ) ;
 size_t ZSTD_compressStream2 (int ,TYPE_2__*,TYPE_3__*,int const) ;
 int ZSTD_e_continue ;
 int ZSTD_e_end ;
 int ZSTD_reset_session_only ;
 int fclose_orDie (int * const) ;
 int * fopen_orDie (char const*,char*) ;
 size_t fread_orDie (int ,size_t const,int * const) ;
 int fwrite_orDie (int ,int ,int * const) ;

__attribute__((used)) static void compressFile_orDie(resources ress, const char* fname, const char* outName)
{

    FILE* const fin = fopen_orDie(fname, "rb");
    FILE* const fout = fopen_orDie(outName, "wb");





    CHECK_ZSTD( ZSTD_CCtx_reset(ress.cctx, ZSTD_reset_session_only) );

    size_t const toRead = ress.buffInSize;
    size_t read;
    while ( (read = fread_orDie(ress.buffIn, toRead, fin)) ) {



        int const lastChunk = (read < toRead);
        ZSTD_EndDirective const mode = lastChunk ? ZSTD_e_end : ZSTD_e_continue;

        ZSTD_inBuffer input = { ress.buffIn, read, 0 };
        int finished;
        do {
            ZSTD_outBuffer output = { ress.buffOut, ress.buffOutSize, 0 };
            size_t const remaining = ZSTD_compressStream2(ress.cctx, &output, &input, mode);
            CHECK_ZSTD(remaining);
            fwrite_orDie(ress.buffOut, output.pos, fout);
            finished = lastChunk ? (remaining == 0) : (input.pos == input.size);
        } while (!finished);
        CHECK(input.pos == input.size,
              "Impossible: zstd only returns 0 when the input is completely consumed!");
    }

    fclose_orDie(fout);
    fclose_orDie(fin);
}
