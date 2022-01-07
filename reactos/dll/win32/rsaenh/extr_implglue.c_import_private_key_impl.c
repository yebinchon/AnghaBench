
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int e; int d; int qP; int dQ; int dP; int q; int p; int N; int type; } ;
struct TYPE_5__ {TYPE_1__ rsa; } ;
typedef TYPE_2__ KEY_CONTEXT ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ MP_OKAY ;
 int NTE_FAIL ;
 int PK_PRIVATE ;
 int SetLastError (int ) ;
 int TRUE ;
 int memcpy (int *,int const*,int) ;
 int min (int,int) ;
 scalar_t__ mp_init_multi (int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int mp_read_unsigned_bin (int *,int *,int) ;
 int mp_set_int (int *,int) ;
 int reverse_bytes (int *,int) ;

BOOL import_private_key_impl(const BYTE *pbSrc, KEY_CONTEXT *pKeyContext, DWORD dwKeyLen,
                             DWORD dwDataLen, DWORD dwPubExp)
{
    BYTE *pbTemp, *pbBigNum;

    if (mp_init_multi(&pKeyContext->rsa.e, &pKeyContext->rsa.d, &pKeyContext->rsa.N,
                      &pKeyContext->rsa.dQ,&pKeyContext->rsa.dP,&pKeyContext->rsa.qP,
                      &pKeyContext->rsa.p, &pKeyContext->rsa.q, ((void*)0)) != MP_OKAY)
    {
        SetLastError(NTE_FAIL);
        return FALSE;
    }

    pbTemp = HeapAlloc(GetProcessHeap(), 0, 2*dwKeyLen+5*((dwKeyLen+1)>>1));
    if (!pbTemp) return FALSE;
    memcpy(pbTemp, pbSrc, min(dwDataLen, 2*dwKeyLen+5*((dwKeyLen+1)>>1)));
    pbBigNum = pbTemp;

    pKeyContext->rsa.type = PK_PRIVATE;
    reverse_bytes(pbBigNum, dwKeyLen);
    mp_read_unsigned_bin(&pKeyContext->rsa.N, pbBigNum, dwKeyLen);
    pbBigNum += dwKeyLen;
    reverse_bytes(pbBigNum, (dwKeyLen+1)>>1);
    mp_read_unsigned_bin(&pKeyContext->rsa.p, pbBigNum, (dwKeyLen+1)>>1);
    pbBigNum += (dwKeyLen+1)>>1;
    reverse_bytes(pbBigNum, (dwKeyLen+1)>>1);
    mp_read_unsigned_bin(&pKeyContext->rsa.q, pbBigNum, (dwKeyLen+1)>>1);
    pbBigNum += (dwKeyLen+1)>>1;
    reverse_bytes(pbBigNum, (dwKeyLen+1)>>1);
    mp_read_unsigned_bin(&pKeyContext->rsa.dP, pbBigNum, (dwKeyLen+1)>>1);
    pbBigNum += (dwKeyLen+1)>>1;
    reverse_bytes(pbBigNum, (dwKeyLen+1)>>1);
    mp_read_unsigned_bin(&pKeyContext->rsa.dQ, pbBigNum, (dwKeyLen+1)>>1);
    pbBigNum += (dwKeyLen+1)>>1;
    reverse_bytes(pbBigNum, (dwKeyLen+1)>>1);
    mp_read_unsigned_bin(&pKeyContext->rsa.qP, pbBigNum, (dwKeyLen+1)>>1);
    pbBigNum += (dwKeyLen+1)>>1;



    dwKeyLen = min(dwKeyLen, dwDataLen - (pbBigNum - pbTemp));
    reverse_bytes(pbBigNum, dwKeyLen);
    mp_read_unsigned_bin(&pKeyContext->rsa.d, pbBigNum, dwKeyLen);
    mp_set_int(&pKeyContext->rsa.e, dwPubExp);

    HeapFree(GetProcessHeap(), 0, pbTemp);
    return TRUE;
}
