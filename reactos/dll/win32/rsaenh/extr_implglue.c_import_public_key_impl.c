
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int e; int N; int type; int q; int p; int qP; int dP; int dQ; int d; } ;
struct TYPE_5__ {TYPE_1__ rsa; } ;
typedef TYPE_2__ KEY_CONTEXT ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ MP_OKAY ;
 int NTE_FAIL ;
 int PK_PUBLIC ;
 int SetLastError (int ) ;
 int TRUE ;
 int memcpy (int *,int const*,int ) ;
 scalar_t__ mp_init_multi (int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int mp_read_unsigned_bin (int *,int *,int ) ;
 int mp_set_int (int *,int ) ;
 int reverse_bytes (int *,int ) ;

BOOL import_public_key_impl(const BYTE *pbSrc, KEY_CONTEXT *pKeyContext, DWORD dwKeyLen,
                            DWORD dwPubExp)
{
    BYTE *pbTemp;

    if (mp_init_multi(&pKeyContext->rsa.e, &pKeyContext->rsa.d, &pKeyContext->rsa.N,
                      &pKeyContext->rsa.dQ,&pKeyContext->rsa.dP,&pKeyContext->rsa.qP,
                      &pKeyContext->rsa.p, &pKeyContext->rsa.q, ((void*)0)) != MP_OKAY)
    {
        SetLastError(NTE_FAIL);
        return FALSE;
    }

    pbTemp = HeapAlloc(GetProcessHeap(), 0, dwKeyLen);
    if (!pbTemp) return FALSE;
    memcpy(pbTemp, pbSrc, dwKeyLen);

    pKeyContext->rsa.type = PK_PUBLIC;
    reverse_bytes(pbTemp, dwKeyLen);
    mp_read_unsigned_bin(&pKeyContext->rsa.N, pbTemp, dwKeyLen);
    HeapFree(GetProcessHeap(), 0, pbTemp);
    mp_set_int(&pKeyContext->rsa.e, dwPubExp);

    return TRUE;
}
