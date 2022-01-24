#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hFile; } ;
typedef  TYPE_1__ SIP_SUBJECTINFO ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ PKCS_7_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,scalar_t__*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ X509_ASN_ENCODING ; 

__attribute__((used)) static BOOL FUNC4(SIP_SUBJECTINFO *pSubjectInfo,
 DWORD *pdwEncodingType, DWORD dwIndex, DWORD *pcbSignedDataMsg,
 BYTE *pbSignedDataMsg)
{
    BOOL ret;

    FUNC3("(%p %p %d %p %p)\n", pSubjectInfo, pdwEncodingType, dwIndex,
          pcbSignedDataMsg, pbSignedDataMsg);

    if (!pbSignedDataMsg)
    {
        *pcbSignedDataMsg = FUNC0(pSubjectInfo->hFile, NULL);
         ret = TRUE;
    }
    else
    {
        DWORD len = FUNC0(pSubjectInfo->hFile, NULL);

        if (*pcbSignedDataMsg < len)
        {
            *pcbSignedDataMsg = len;
            FUNC2(ERROR_INSUFFICIENT_BUFFER);
            ret = FALSE;
        }
        else
        {
            ret = FUNC1(pSubjectInfo->hFile, pbSignedDataMsg, len,
             pcbSignedDataMsg, NULL);
            if (ret)
                *pdwEncodingType = X509_ASN_ENCODING | PKCS_7_ASN_ENCODING;
        }
    }
    return ret;
}