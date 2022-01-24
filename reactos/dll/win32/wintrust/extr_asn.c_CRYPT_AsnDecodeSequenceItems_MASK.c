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
struct AsnDecodeSequenceItem {int const tag; int pointerOffset; int (* decodeFunc ) (int,int /*<<< orphan*/ *,int const*,int,int,int*,scalar_t__*) ;int offset; scalar_t__ size; scalar_t__ minSize; scalar_t__ optional; scalar_t__ hasPointer; } ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int CRYPT_DECODE_ALLOC_FLAG ; 
 scalar_t__ CRYPT_E_ASN1_BADTAG ; 
 scalar_t__ CRYPT_E_ASN1_CORRUPT ; 
 int FUNC1 (int const*,int,int*) ; 
 int FALSE ; 
 int FUNC2 (int const) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ NOERROR ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int TRUE ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int const*,int,int,int*,scalar_t__*) ; 

__attribute__((used)) static BOOL FUNC7(DWORD dwCertEncodingType,
 struct AsnDecodeSequenceItem items[], DWORD cItem, const BYTE *pbEncoded,
 DWORD cbEncoded, DWORD dwFlags, void *pvStructInfo, BYTE *nextData,
 DWORD *cbDecoded)
{
    BOOL ret;
    DWORD i, decoded = 0;
    const BYTE *ptr = pbEncoded;

    FUNC5("%p, %d, %p, %d, %08x, %p, %p, %p\n", items, cItem, pbEncoded,
     cbEncoded, dwFlags, pvStructInfo, nextData, cbDecoded);

    for (i = 0, ret = TRUE; ret && i < cItem; i++)
    {
        if (cbEncoded - (ptr - pbEncoded) != 0)
        {
            DWORD nextItemLen;

            if ((ret = FUNC1(ptr, cbEncoded - (ptr - pbEncoded),
             &nextItemLen)))
            {
                BYTE nextItemLenBytes = FUNC2(ptr[1]);

                if (ptr[0] == items[i].tag || !items[i].tag)
                {
                    if (nextData && pvStructInfo && items[i].hasPointer)
                    {
                        FUNC5("Setting next pointer to %p\n",
                         nextData);
                        *(BYTE **)((BYTE *)pvStructInfo +
                         items[i].pointerOffset) = nextData;
                    }
                    if (items[i].decodeFunc)
                    {
                        if (pvStructInfo)
                            FUNC5("decoding item %d\n", i);
                        else
                            FUNC5("sizing item %d\n", i);
                        ret = items[i].decodeFunc(dwCertEncodingType,
                         NULL, ptr, 1 + nextItemLenBytes + nextItemLen,
                         dwFlags & ~CRYPT_DECODE_ALLOC_FLAG,
                         pvStructInfo ?  (BYTE *)pvStructInfo + items[i].offset
                         : NULL, &items[i].size);
                        if (ret)
                        {
                            if (items[i].size < items[i].minSize)
                                items[i].size = items[i].minSize;
                            else if (items[i].size > items[i].minSize)
                            {
                                /* Account for alignment padding */
                                items[i].size = FUNC0(items[i].size);
                            }
                            FUNC5("item %d size: %d\n", i, items[i].size);
                            if (nextData && items[i].hasPointer &&
                             items[i].size > items[i].minSize)
                                nextData += items[i].size - items[i].minSize;
                            ptr += 1 + nextItemLenBytes + nextItemLen;
                            decoded += 1 + nextItemLenBytes + nextItemLen;
                            FUNC5("item %d: decoded %d bytes\n", i,
                             1 + nextItemLenBytes + nextItemLen);
                        }
                        else if (items[i].optional &&
                         FUNC3() == CRYPT_E_ASN1_BADTAG)
                        {
                            FUNC5("skipping optional item %d\n", i);
                            items[i].size = items[i].minSize;
                            FUNC4(NOERROR);
                            ret = TRUE;
                        }
                        else
                            FUNC5("item %d failed: %08x\n", i,
                             FUNC3());
                    }
                    else
                    {
                        FUNC5("item %d: decoded %d bytes\n", i,
                         1 + nextItemLenBytes + nextItemLen);
                        ptr += 1 + nextItemLenBytes + nextItemLen;
                        decoded += 1 + nextItemLenBytes + nextItemLen;
                        items[i].size = items[i].minSize;
                    }
                }
                else if (items[i].optional)
                {
                    FUNC5("skipping optional item %d\n", i);
                    items[i].size = items[i].minSize;
                }
                else
                {
                    FUNC5("item %d: tag %02x doesn't match expected %02x\n",
                     i, ptr[0], items[i].tag);
                    FUNC4(CRYPT_E_ASN1_BADTAG);
                    ret = FALSE;
                }
            }
        }
        else if (items[i].optional)
        {
            FUNC5("missing optional item %d, skipping\n", i);
            items[i].size = items[i].minSize;
        }
        else
        {
            FUNC5("not enough bytes for item %d, failing\n", i);
            FUNC4(CRYPT_E_ASN1_CORRUPT);
            ret = FALSE;
        }
    }
    if (ret)
        *cbDecoded = decoded;
    FUNC5("returning %d\n", ret);
    return ret;
}