
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int e; int d; int qP; int dQ; int dP; int q; int p; int N; } ;
struct TYPE_5__ {TYPE_1__ rsa; } ;
typedef TYPE_2__ KEY_CONTEXT ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int TRUE ;
 int memset (int *,int ,int) ;
 scalar_t__ mp_get_int (int *) ;
 int mp_to_unsigned_bin (int *,int *) ;
 int mp_unsigned_bin_size (int *) ;
 int reverse_bytes (int *,int) ;

BOOL export_private_key_impl(BYTE *pbDest, const KEY_CONTEXT *pKeyContext, DWORD dwKeyLen,
                             DWORD *pdwPubExp)
{
    mp_to_unsigned_bin(&pKeyContext->rsa.N, pbDest);
    reverse_bytes(pbDest, mp_unsigned_bin_size(&pKeyContext->rsa.N));
    if (mp_unsigned_bin_size(&pKeyContext->rsa.N) < dwKeyLen)
        memset(pbDest + mp_unsigned_bin_size(&pKeyContext->rsa.N), 0,
               dwKeyLen - mp_unsigned_bin_size(&pKeyContext->rsa.N));
    pbDest += dwKeyLen;
    mp_to_unsigned_bin(&pKeyContext->rsa.p, pbDest);
    reverse_bytes(pbDest, mp_unsigned_bin_size(&pKeyContext->rsa.p));
    if (mp_unsigned_bin_size(&pKeyContext->rsa.p) < (dwKeyLen+1)>>1)
        memset(pbDest + mp_unsigned_bin_size(&pKeyContext->rsa.p), 0,
               ((dwKeyLen+1)>>1) - mp_unsigned_bin_size(&pKeyContext->rsa.p));
    pbDest += (dwKeyLen+1)>>1;
    mp_to_unsigned_bin(&pKeyContext->rsa.q, pbDest);
    reverse_bytes(pbDest, mp_unsigned_bin_size(&pKeyContext->rsa.q));
    if (mp_unsigned_bin_size(&pKeyContext->rsa.q) < (dwKeyLen+1)>>1)
        memset(pbDest + mp_unsigned_bin_size(&pKeyContext->rsa.q), 0,
               ((dwKeyLen+1)>>1) - mp_unsigned_bin_size(&pKeyContext->rsa.q));
    pbDest += (dwKeyLen+1)>>1;
    mp_to_unsigned_bin(&pKeyContext->rsa.dP, pbDest);
    reverse_bytes(pbDest, mp_unsigned_bin_size(&pKeyContext->rsa.dP));
    if (mp_unsigned_bin_size(&pKeyContext->rsa.dP) < (dwKeyLen+1)>>1)
        memset(pbDest + mp_unsigned_bin_size(&pKeyContext->rsa.dP), 0,
               ((dwKeyLen+1)>>1) - mp_unsigned_bin_size(&pKeyContext->rsa.dP));
    pbDest += (dwKeyLen+1)>>1;
    mp_to_unsigned_bin(&pKeyContext->rsa.dQ, pbDest);
    reverse_bytes(pbDest, mp_unsigned_bin_size(&pKeyContext->rsa.dQ));
    if (mp_unsigned_bin_size(&pKeyContext->rsa.dQ) < (dwKeyLen+1)>>1)
        memset(pbDest + mp_unsigned_bin_size(&pKeyContext->rsa.dQ), 0,
               ((dwKeyLen+1)>>1) - mp_unsigned_bin_size(&pKeyContext->rsa.dQ));
    pbDest += (dwKeyLen+1)>>1;
    mp_to_unsigned_bin(&pKeyContext->rsa.qP, pbDest);
    reverse_bytes(pbDest, mp_unsigned_bin_size(&pKeyContext->rsa.qP));
    if (mp_unsigned_bin_size(&pKeyContext->rsa.qP) < (dwKeyLen+1)>>1)
        memset(pbDest + mp_unsigned_bin_size(&pKeyContext->rsa.qP), 0,
               ((dwKeyLen+1)>>1) - mp_unsigned_bin_size(&pKeyContext->rsa.qP));
    pbDest += (dwKeyLen+1)>>1;
    mp_to_unsigned_bin(&pKeyContext->rsa.d, pbDest);
    reverse_bytes(pbDest, mp_unsigned_bin_size(&pKeyContext->rsa.d));
    if (mp_unsigned_bin_size(&pKeyContext->rsa.d) < dwKeyLen)
        memset(pbDest + mp_unsigned_bin_size(&pKeyContext->rsa.d), 0,
               dwKeyLen - mp_unsigned_bin_size(&pKeyContext->rsa.d));
    *pdwPubExp = (DWORD)mp_get_int(&pKeyContext->rsa.e);

    return TRUE;
}
