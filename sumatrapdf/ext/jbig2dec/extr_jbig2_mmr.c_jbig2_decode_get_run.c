
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mmr_table_node ;
typedef int Jbig2MmrCtx ;
typedef int Jbig2Ctx ;


 int ERROR ;
 int JBIG2_SEVERITY_FATAL ;
 int UNCOMPRESSED ;
 int ZEROES ;
 int jbig2_decode_get_code (int *,int const*,int) ;
 int jbig2_error (int *,int ,int,char*) ;

__attribute__((used)) static int
jbig2_decode_get_run(Jbig2Ctx *ctx, Jbig2MmrCtx *mmr, const mmr_table_node *table, int initial_bits)
{
    int result = 0;
    int val;

    do {
        val = jbig2_decode_get_code(mmr, table, initial_bits);
        if (val == ERROR)
            return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1, "invalid code detected in MMR-coded data");
        else if (val == UNCOMPRESSED)
            return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1, "uncompressed code in MMR-coded data");
        else if (val == ZEROES)
            return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1, "zeroes code in MMR-coded data");
        result += val;
    } while (val >= 64);

    return result;
}
