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
struct AsnDecodeSequenceItem {int size; int minSize; } ;
typedef  int DWORD ;
typedef  scalar_t__ BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ const ASN_SEQUENCE ; 
 int FUNC0 (int,struct AsnDecodeSequenceItem*,int,scalar_t__ const*,int,int,void*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  CRYPT_E_ASN1_BADTAG ; 
 int /*<<< orphan*/  CRYPT_E_ASN1_CORRUPT ; 
 int FUNC1 (scalar_t__ const*,int,int*) ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 int FALSE ; 
 int FUNC2 (scalar_t__ const) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC7(DWORD dwCertEncodingType,
 struct AsnDecodeSequenceItem items[], DWORD cItem, const BYTE *pbEncoded,
 DWORD cbEncoded, DWORD dwFlags, void *pvStructInfo, DWORD *pcbStructInfo,
 void *startingPointer)
{
    BOOL ret;

    FUNC5("%p, %d, %p, %d, %08x, %p, %d, %p\n", items, cItem, pbEncoded,
     cbEncoded, dwFlags, pvStructInfo, *pcbStructInfo, startingPointer);

    if (pbEncoded[0] == ASN_SEQUENCE)
    {
        DWORD dataLen;

        if ((ret = FUNC1(pbEncoded, cbEncoded, &dataLen)))
        {
            DWORD lenBytes = FUNC2(pbEncoded[1]), cbDecoded;
            const BYTE *ptr = pbEncoded + 1 + lenBytes;

            cbEncoded -= 1 + lenBytes;
            if (cbEncoded < dataLen)
            {
                FUNC5("dataLen %d exceeds cbEncoded %d, failing\n", dataLen,
                 cbEncoded);
                FUNC4(CRYPT_E_ASN1_CORRUPT);
                ret = FALSE;
            }
            else
                ret = FUNC0(dwFlags, items, cItem, ptr,
                 cbEncoded, dwFlags, NULL, NULL, &cbDecoded);
            if (ret && cbDecoded != dataLen)
            {
                FUNC5("expected %d decoded, got %d, failing\n", dataLen,
                 cbDecoded);
                FUNC4(CRYPT_E_ASN1_CORRUPT);
                ret = FALSE;
            }
            if (ret)
            {
                DWORD i, bytesNeeded = 0, structSize = 0;

                for (i = 0; i < cItem; i++)
                {
                    bytesNeeded += items[i].size;
                    structSize += items[i].minSize;
                }
                if (!pvStructInfo)
                    *pcbStructInfo = bytesNeeded;
                else if (*pcbStructInfo < bytesNeeded)
                {
                    FUNC4(ERROR_MORE_DATA);
                    *pcbStructInfo = bytesNeeded;
                    ret = FALSE;
                }
                else
                {
                    BYTE *nextData;

                    *pcbStructInfo = bytesNeeded;
                    if (startingPointer)
                        nextData = startingPointer;
                    else
                        nextData = (BYTE *)pvStructInfo + structSize;
                    FUNC6(pvStructInfo, 0, structSize);
                    ret = FUNC0(dwFlags, items, cItem,
                     ptr, cbEncoded, dwFlags, pvStructInfo, nextData,
                     &cbDecoded);
                }
            }
        }
    }
    else
    {
        FUNC4(CRYPT_E_ASN1_BADTAG);
        ret = FALSE;
    }
    FUNC5("returning %d (%08x)\n", ret, FUNC3());
    return ret;
}