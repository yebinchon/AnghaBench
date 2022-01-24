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
struct encodedFiletime {int /*<<< orphan*/ * encodedTime; TYPE_3__ sysTime; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ LPCSTR ;
typedef  TYPE_1__ FILETIME ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_ENCODE_ALLOC_FLAG ; 
 scalar_t__ CRYPT_E_BAD_ENCODE ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 scalar_t__ X509_CHOICE_OF_TIME ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int FUNC6 (scalar_t__,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*) ; 

__attribute__((used)) static void FUNC7(DWORD dwEncoding, LPCSTR structType,
 const struct encodedFiletime *time)
{
    FILETIME ft = { 0 };
    BYTE *buf = NULL;
    DWORD bufSize = 0;
    BOOL ret;

    ret = FUNC2(&time->sysTime, &ft);
    FUNC5(ret, "SystemTimeToFileTime failed: %d\n", FUNC0());
    ret = FUNC6(dwEncoding, structType, &ft,
     CRYPT_ENCODE_ALLOC_FLAG, NULL, &buf, &bufSize);
    /* years other than 1950-2050 are not allowed for encodings other than
     * X509_CHOICE_OF_TIME.
     */
    if (structType == X509_CHOICE_OF_TIME ||
     (time->sysTime.wYear >= 1950 && time->sysTime.wYear <= 2050))
    {
        FUNC5(ret, "CryptEncodeObjectEx failed: %d (0x%08x)\n", FUNC0(),
         FUNC0());
        FUNC5(buf != NULL, "Expected an allocated buffer\n");
        if (ret)
        {
            FUNC5(buf[0] == time->encodedTime[0],
             "Expected type 0x%02x, got 0x%02x\n", time->encodedTime[0],
             buf[0]);
            FUNC5(buf[1] == time->encodedTime[1], "Expected %d bytes, got %d\n",
             time->encodedTime[1], bufSize);
            FUNC5(!FUNC4(time->encodedTime + 2, buf + 2, time->encodedTime[1]),
             "Got unexpected value for time encoding\n");
            FUNC1(buf);
        }
    }
    else
        FUNC5((!ret && FUNC0() == CRYPT_E_BAD_ENCODE) ||
         FUNC3(FUNC0() == ERROR_SUCCESS),
         "Expected CRYPT_E_BAD_ENCODE, got 0x%08x\n", FUNC0());
}