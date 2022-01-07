
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int data ;
typedef int ZSTD_DCtx ;
typedef int ZSTD_CCtx ;
typedef int XXH64_state_t ;
struct TYPE_3__ {int member_1; int pos; int dst; int member_2; int * member_0; } ;
typedef int SEQ_stream ;
typedef TYPE_1__ SEQ_outBuffer ;
typedef int SEQ_gen_type ;
typedef int BYTE ;


 size_t SEQ_gen (int *,int ,unsigned int,TYPE_1__*) ;
 size_t SEQ_roundTrip (int *,int *,int *,int ,int ,int ) ;
 int ZSTD_e_continue ;
 scalar_t__ ZSTD_isError (size_t) ;

__attribute__((used)) static size_t SEQ_generateRoundTrip(ZSTD_CCtx* cctx, ZSTD_DCtx* dctx,
                                    XXH64_state_t* xxh, SEQ_stream* seq,
                                    SEQ_gen_type type, unsigned value)
{
    static BYTE data[1024];
    size_t gen;

    do {
        SEQ_outBuffer sout = {data, sizeof(data), 0};
        size_t ret;
        gen = SEQ_gen(seq, type, value, &sout);

        ret = SEQ_roundTrip(cctx, dctx, xxh, sout.dst, sout.pos, ZSTD_e_continue);
        if (ZSTD_isError(ret))
            return ret;
    } while (gen != 0);

    return 0;
}
