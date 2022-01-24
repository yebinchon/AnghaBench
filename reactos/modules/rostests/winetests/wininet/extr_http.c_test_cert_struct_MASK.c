#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
struct TYPE_7__ {int /*<<< orphan*/  ex_issuer; int /*<<< orphan*/  ex_subject; } ;
typedef  TYPE_1__ cert_struct_test_t ;
struct TYPE_8__ {int lpszSubjectInfo; int lpszIssuerInfo; int lpszSignatureAlgName; int lpszEncryptionAlgName; int lpszProtocolName; int dwKeySize; } ;
typedef  TYPE_2__ INTERNET_CERTIFICATE_INFOA ;
typedef  int /*<<< orphan*/  HINTERNET ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  INTERNET_OPTION_SECURITY_CERTIFICATE_STRUCT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(HINTERNET req, const cert_struct_test_t *test)
{
    INTERNET_CERTIFICATE_INFOA info;
    DWORD size;
    BOOL res;

    FUNC2(&info, 0x5, sizeof(info));

    size = sizeof(info);
    res = FUNC1(req, INTERNET_OPTION_SECURITY_CERTIFICATE_STRUCT, &info, &size);
    FUNC3(res, "InternetQueryOption failed: %u\n", FUNC0());
    FUNC3(size == sizeof(info), "size = %u\n", size);

    FUNC3(!FUNC5(info.lpszSubjectInfo, test->ex_subject), "lpszSubjectInfo = %s\n", info.lpszSubjectInfo);
    FUNC3(!FUNC5(info.lpszIssuerInfo, test->ex_issuer), "lpszIssuerInfo = %s\n", info.lpszIssuerInfo);
    FUNC3(!info.lpszSignatureAlgName, "lpszSignatureAlgName = %s\n", info.lpszSignatureAlgName);
    FUNC3(!info.lpszEncryptionAlgName, "lpszEncryptionAlgName = %s\n", info.lpszEncryptionAlgName);
    FUNC3(!info.lpszProtocolName, "lpszProtocolName = %s\n", info.lpszProtocolName);
    FUNC3(info.dwKeySize >= 128 && info.dwKeySize <= 256, "dwKeySize = %u\n", info.dwKeySize);

    FUNC4(&info);
}