
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int SBSYMCODELEN; int * IAIDx; } ;
typedef int Jbig2Ctx ;
typedef int Jbig2ArithState ;
typedef TYPE_1__ Jbig2ArithIaidCtx ;
typedef int Jbig2ArithCx ;


 int JBIG2_SEVERITY_FATAL ;
 int fprintf (int ,char*,int,...) ;
 int jbig2_arith_decode (int *,int *,int*) ;
 int jbig2_error (int *,int ,int,char*) ;
 int stderr ;

int
jbig2_arith_iaid_decode(Jbig2Ctx *ctx, Jbig2ArithIaidCtx *actx, Jbig2ArithState *as, int32_t *p_result)
{
    Jbig2ArithCx *IAIDx = actx->IAIDx;
    int SBSYMCODELEN = actx->SBSYMCODELEN;
    int PREV = 1;
    int D;
    int i;
    int code = 0;


    for (i = 0; i < SBSYMCODELEN; i++) {
        D = jbig2_arith_decode(as, &IAIDx[PREV], &code);
        if (code)
            return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1, "failed to decode IAIDx code");



        PREV = (PREV << 1) | D;
    }

    PREV -= 1 << SBSYMCODELEN;



    *p_result = PREV;
    return 0;
}
