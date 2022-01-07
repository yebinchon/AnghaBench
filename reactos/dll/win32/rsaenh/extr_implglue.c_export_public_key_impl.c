
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int e; int N; } ;
struct TYPE_5__ {TYPE_1__ rsa; } ;
typedef TYPE_2__ KEY_CONTEXT ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int TRUE ;
 int memset (int *,int ,scalar_t__) ;
 scalar_t__ mp_get_int (int *) ;
 int mp_to_unsigned_bin (int *,int *) ;
 scalar_t__ mp_unsigned_bin_size (int *) ;
 int reverse_bytes (int *,scalar_t__) ;

BOOL export_public_key_impl(BYTE *pbDest, const KEY_CONTEXT *pKeyContext, DWORD dwKeyLen,DWORD *pdwPubExp)
{
    mp_to_unsigned_bin(&pKeyContext->rsa.N, pbDest);
    reverse_bytes(pbDest, mp_unsigned_bin_size(&pKeyContext->rsa.N));
    if (mp_unsigned_bin_size(&pKeyContext->rsa.N) < dwKeyLen)
        memset(pbDest + mp_unsigned_bin_size(&pKeyContext->rsa.N), 0,
               dwKeyLen - mp_unsigned_bin_size(&pKeyContext->rsa.N));
    *pdwPubExp = (DWORD)mp_get_int(&pKeyContext->rsa.e);
    return TRUE;
}
