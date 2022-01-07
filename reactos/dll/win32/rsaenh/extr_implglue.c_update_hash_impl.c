
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sha512; int sha384; int sha256; int sha; int md5; int md4; int md2; } ;
typedef TYPE_1__ HASH_CONTEXT ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;
typedef int ALG_ID ;


 int A_SHAUpdate (int *,int const*,int ) ;







 int FALSE ;
 int MD4Update (int *,int const*,int ) ;
 int MD5Update (int *,int const*,int ) ;
 int NTE_BAD_ALGID ;
 int SHA256_Update (int *,int const*,int ) ;
 int SHA384_Update (int *,int const*,int ) ;
 int SHA512_Update (int *,int const*,int ) ;
 int SetLastError (int ) ;
 int TRUE ;
 int md2_process (int *,int const*,int ) ;

BOOL update_hash_impl(ALG_ID aiAlgid, HASH_CONTEXT *pHashContext, const BYTE *pbData,
                      DWORD dwDataLen)
{
    switch (aiAlgid)
    {
        case 134:
            md2_process(&pHashContext->md2, pbData, dwDataLen);
            break;

        case 133:
            MD4Update(&pHashContext->md4, pbData, dwDataLen);
            break;

        case 132:
            MD5Update(&pHashContext->md5, pbData, dwDataLen);
            break;

        case 131:
            A_SHAUpdate(&pHashContext->sha, pbData, dwDataLen);
            break;

        case 130:
            SHA256_Update(&pHashContext->sha256, pbData, dwDataLen);
            break;

        case 129:
            SHA384_Update(&pHashContext->sha384, pbData, dwDataLen);
            break;

        case 128:
            SHA512_Update(&pHashContext->sha512, pbData, dwDataLen);
            break;

        default:
            SetLastError(NTE_BAD_ALGID);
            return FALSE;
    }

    return TRUE;
}
