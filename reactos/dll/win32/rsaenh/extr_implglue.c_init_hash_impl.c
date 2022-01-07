
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sha512; int sha384; int sha256; int sha; int md5; int md4; int md2; } ;
typedef TYPE_1__ HASH_CONTEXT ;
typedef int BOOL ;
typedef int ALG_ID ;


 int A_SHAInit (int *) ;







 int MD4Init (int *) ;
 int MD5Init (int *) ;
 int SHA256_Init (int *) ;
 int SHA384_Init (int *) ;
 int SHA512_Init (int *) ;
 int TRUE ;
 int md2_init (int *) ;

BOOL init_hash_impl(ALG_ID aiAlgid, HASH_CONTEXT *pHashContext)
{
    switch (aiAlgid)
    {
        case 134:
            md2_init(&pHashContext->md2);
            break;

        case 133:
            MD4Init(&pHashContext->md4);
            break;

        case 132:
            MD5Init(&pHashContext->md5);
            break;

        case 131:
            A_SHAInit(&pHashContext->sha);
            break;

        case 130:
            SHA256_Init(&pHashContext->sha256);
            break;

        case 129:
            SHA384_Init(&pHashContext->sha384);
            break;

        case 128:
            SHA512_Init(&pHashContext->sha512);
            break;
    }

    return TRUE;
}
