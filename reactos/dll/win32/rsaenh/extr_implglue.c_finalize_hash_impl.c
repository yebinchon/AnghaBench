
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int digest; } ;
struct TYPE_6__ {int digest; } ;
struct TYPE_5__ {int sha512; int sha384; int sha256; int sha; TYPE_3__ md5; TYPE_4__ md4; int md2; } ;
typedef int PULONG ;
typedef TYPE_1__ HASH_CONTEXT ;
typedef int BYTE ;
typedef int BOOL ;
typedef int ALG_ID ;


 int A_SHAFinal (int *,int ) ;







 int FALSE ;
 int MD4Final (TYPE_4__*) ;
 int MD5Final (TYPE_3__*) ;
 int NTE_BAD_ALGID ;
 int SHA256_Final (int *,int *) ;
 int SHA384_Final (int *,int *) ;
 int SHA512_Final (int *,int *) ;
 int SetLastError (int ) ;
 int TRUE ;
 int md2_done (int *,int *) ;
 int memcpy (int *,int ,int) ;

BOOL finalize_hash_impl(ALG_ID aiAlgid, HASH_CONTEXT *pHashContext, BYTE *pbHashValue)
{
    switch (aiAlgid)
    {
        case 134:
            md2_done(&pHashContext->md2, pbHashValue);
            break;

        case 133:
            MD4Final(&pHashContext->md4);
            memcpy(pbHashValue, pHashContext->md4.digest, 16);
            break;

        case 132:
            MD5Final(&pHashContext->md5);
            memcpy(pbHashValue, pHashContext->md5.digest, 16);
            break;

        case 131:
            A_SHAFinal(&pHashContext->sha, (PULONG)pbHashValue);
            break;

        case 130:
            SHA256_Final(pbHashValue, &pHashContext->sha256);
            break;

        case 129:
            SHA384_Final(pbHashValue, &pHashContext->sha384);
            break;

        case 128:
            SHA512_Final(pbHashValue, &pHashContext->sha512);
            break;

        default:
            SetLastError(NTE_BAD_ALGID);
            return FALSE;
    }

    return TRUE;
}
