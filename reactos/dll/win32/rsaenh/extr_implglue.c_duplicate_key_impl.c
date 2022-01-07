
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dQ; int dP; int qP; int q; int p; int N; int d; int e; int type; } ;
struct TYPE_6__ {TYPE_1__ rsa; } ;
typedef TYPE_2__ KEY_CONTEXT ;
typedef int BOOL ;
typedef int ALG_ID ;
 int FALSE ;
 int NTE_BAD_ALGID ;
 int SetLastError (int ) ;
 int TRUE ;
 int mp_init_copy (int *,int *) ;

BOOL duplicate_key_impl(ALG_ID aiAlgid, const KEY_CONTEXT *pSrcKeyContext,
                        KEY_CONTEXT *pDestKeyContext)
{
    switch (aiAlgid)
    {
        case 130:
        case 131:
        case 138:
        case 137:
        case 132:
        case 136:
        case 135:
        case 134:
        case 133:
            *pDestKeyContext = *pSrcKeyContext;
            break;
        case 129:
        case 128:
            pDestKeyContext->rsa.type = pSrcKeyContext->rsa.type;
            mp_init_copy(&pDestKeyContext->rsa.e, &pSrcKeyContext->rsa.e);
            mp_init_copy(&pDestKeyContext->rsa.d, &pSrcKeyContext->rsa.d);
            mp_init_copy(&pDestKeyContext->rsa.N, &pSrcKeyContext->rsa.N);
            mp_init_copy(&pDestKeyContext->rsa.p, &pSrcKeyContext->rsa.p);
            mp_init_copy(&pDestKeyContext->rsa.q, &pSrcKeyContext->rsa.q);
            mp_init_copy(&pDestKeyContext->rsa.qP, &pSrcKeyContext->rsa.qP);
            mp_init_copy(&pDestKeyContext->rsa.dP, &pSrcKeyContext->rsa.dP);
            mp_init_copy(&pDestKeyContext->rsa.dQ, &pSrcKeyContext->rsa.dQ);
            break;

        default:
            SetLastError(NTE_BAD_ALGID);
            return FALSE;
    }

    return TRUE;
}
