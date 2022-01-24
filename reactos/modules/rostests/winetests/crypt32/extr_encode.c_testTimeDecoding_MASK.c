#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int wYear; } ;
struct encodedFiletime {TYPE_3__ sysTime; scalar_t__* encodedTime; } ;
typedef  int /*<<< orphan*/  ft ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ LPCSTR ;
typedef  TYPE_1__ FILETIME ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ CRYPT_E_ASN1_BADTAG ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ OSS_DATA_ERROR ; 
 scalar_t__ OSS_PDU_MISMATCH ; 
 scalar_t__ X509_CHOICE_OF_TIME ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC4 (int,scalar_t__,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int*) ; 

__attribute__((used)) static void FUNC5(DWORD dwEncoding, LPCSTR structType,
 const struct encodedFiletime *time)
{
    FILETIME ft = { 0 };
    DWORD size = sizeof(ft);
    BOOL ret;

    ret = FUNC4(dwEncoding, structType, time->encodedTime,
     time->encodedTime[1] + 2, 0, NULL, &ft, &size);
    /* years other than 1950-2050 are not allowed for encodings other than
     * X509_CHOICE_OF_TIME.
     */
    if (structType == X509_CHOICE_OF_TIME ||
     (time->sysTime.wYear >= 1950 && time->sysTime.wYear <= 2050))
    {
        FUNC3(ret || FUNC1(FUNC0() == OSS_DATA_ERROR),
         "CryptDecodeObjectEx failed: %d (0x%08x)\n", FUNC0(),
         FUNC0());
        if (ret)
            FUNC2(&time->sysTime, &ft);
    }
    else
        FUNC3(!ret && (FUNC0() == CRYPT_E_ASN1_BADTAG ||
         FUNC0() == OSS_PDU_MISMATCH /* Win9x */ ),
         "Expected CRYPT_E_ASN1_BADTAG or OSS_PDU_MISMATCH, got %08x\n",
         FUNC0());
}