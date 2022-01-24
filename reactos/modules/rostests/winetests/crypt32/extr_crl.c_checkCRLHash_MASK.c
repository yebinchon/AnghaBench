#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  hashProperty ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  PCCRL_CONTEXT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;
typedef  int /*<<< orphan*/  ALG_ID ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static void FUNC6(const BYTE *data, DWORD dataLen, ALG_ID algID,
 PCCRL_CONTEXT context, DWORD propID)
{
    BYTE hash[20] = { 0 }, hashProperty[20];
    BOOL ret;
    DWORD size;

    FUNC4(hash, 0, sizeof(hash));
    FUNC4(hashProperty, 0, sizeof(hashProperty));
    size = sizeof(hash);
    ret = FUNC1(0, algID, 0, data, dataLen, hash, &size);
    FUNC5(ret, "CryptHashCertificate failed: %08x\n", FUNC2());
    ret = FUNC0(context, propID, hashProperty, &size);
    FUNC5(ret, "CertGetCRLContextProperty failed: %08x\n", FUNC2());
    FUNC5(!FUNC3(hash, hashProperty, size), "Unexpected hash for property %d\n",
     propID);
}