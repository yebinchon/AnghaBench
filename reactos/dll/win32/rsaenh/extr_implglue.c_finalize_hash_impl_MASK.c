#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  digest; } ;
struct TYPE_6__ {int /*<<< orphan*/  digest; } ;
struct TYPE_5__ {int /*<<< orphan*/  sha512; int /*<<< orphan*/  sha384; int /*<<< orphan*/  sha256; int /*<<< orphan*/  sha; TYPE_3__ md5; TYPE_4__ md4; int /*<<< orphan*/  md2; } ;
typedef  int /*<<< orphan*/  PULONG ;
typedef  TYPE_1__ HASH_CONTEXT ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int ALG_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  CALG_MD2 134 
#define  CALG_MD4 133 
#define  CALG_MD5 132 
#define  CALG_SHA 131 
#define  CALG_SHA_256 130 
#define  CALG_SHA_384 129 
#define  CALG_SHA_512 128 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  NTE_BAD_ALGID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

BOOL FUNC9(ALG_ID aiAlgid, HASH_CONTEXT *pHashContext, BYTE *pbHashValue) 
{
    switch (aiAlgid)
    {
        case CALG_MD2:
            FUNC7(&pHashContext->md2, pbHashValue);
            break;
        
        case CALG_MD4:
            FUNC1(&pHashContext->md4);
            FUNC8(pbHashValue, pHashContext->md4.digest, 16);
            break;
        
        case CALG_MD5:
            FUNC2(&pHashContext->md5);
            FUNC8(pbHashValue, pHashContext->md5.digest, 16);
            break;
        
        case CALG_SHA:
            FUNC0(&pHashContext->sha, (PULONG)pbHashValue);
            break;
        
        case CALG_SHA_256:
            FUNC3(pbHashValue, &pHashContext->sha256);
            break;

        case CALG_SHA_384:
            FUNC4(pbHashValue, &pHashContext->sha384);
            break;

        case CALG_SHA_512:
            FUNC5(pbHashValue, &pHashContext->sha512);
            break;

        default:
            FUNC6(NTE_BAD_ALGID);
            return FALSE;
    }

    return TRUE;
}