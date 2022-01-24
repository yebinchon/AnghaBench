#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sha512; int /*<<< orphan*/  sha384; int /*<<< orphan*/  sha256; int /*<<< orphan*/  sha; int /*<<< orphan*/  md5; int /*<<< orphan*/  md4; int /*<<< orphan*/  md2; } ;
typedef  TYPE_1__ HASH_CONTEXT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int ALG_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
#define  CALG_MD2 134 
#define  CALG_MD4 133 
#define  CALG_MD5 132 
#define  CALG_SHA 131 
#define  CALG_SHA_256 130 
#define  CALG_SHA_384 129 
#define  CALG_SHA_512 128 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTE_BAD_ALGID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

BOOL FUNC8(ALG_ID aiAlgid, HASH_CONTEXT *pHashContext, const BYTE *pbData,
                      DWORD dwDataLen) 
{
    switch (aiAlgid)
    {
        case CALG_MD2:
            FUNC7(&pHashContext->md2, pbData, dwDataLen);
            break;
        
        case CALG_MD4:
            FUNC1(&pHashContext->md4, pbData, dwDataLen);
            break;
    
        case CALG_MD5:
            FUNC2(&pHashContext->md5, pbData, dwDataLen);
            break;
        
        case CALG_SHA:
            FUNC0(&pHashContext->sha, pbData, dwDataLen);
            break;
        
        case CALG_SHA_256:
            FUNC3(&pHashContext->sha256, pbData, dwDataLen);
            break;

        case CALG_SHA_384:
            FUNC4(&pHashContext->sha384, pbData, dwDataLen);
            break;

        case CALG_SHA_512:
            FUNC5(&pHashContext->sha512, pbData, dwDataLen);
            break;

        default:
            FUNC6(NTE_BAD_ALGID);
            return FALSE;
    }

    return TRUE;
}