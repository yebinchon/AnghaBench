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
typedef  int /*<<< orphan*/  object_header_t ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  INTERNET_STATUS_CALLBACK ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  FTP_COMMAND ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC3(INT nSocket, FTP_COMMAND ftpCmd, LPCWSTR lpszParam,
	INTERNET_STATUS_CALLBACK lpfnStatusCB, object_header_t *hdr, DWORD_PTR dwContext)
{
    BOOL ret;
    LPSTR lpszParamA = FUNC2(lpszParam);
    ret = FUNC0(nSocket, ftpCmd, lpszParamA, lpfnStatusCB, hdr, dwContext);
    FUNC1(lpszParamA);
    return ret;
}