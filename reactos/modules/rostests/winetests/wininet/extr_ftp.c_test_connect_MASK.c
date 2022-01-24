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
typedef  int /*<<< orphan*/ * HINTERNET ;

/* Variables and functions */
 scalar_t__ ERROR_INTERNET_LOGIN_FAILURE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  INTERNET_DEFAULT_FTP_PORT ; 
 int /*<<< orphan*/  INTERNET_FLAG_PASSIVE ; 
 int /*<<< orphan*/  INTERNET_SERVICE_FTP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(HINTERNET hInternet)
{
    HINTERNET hFtp;

    /* Try a few username/password combinations:
     * anonymous : NULL
     * NULL      : IEUser@
     * NULL      : NULL
     * ""        : IEUser@
     * ""        : NULL
     */

    FUNC3(0xdeadbeef);
    hFtp = FUNC2(hInternet, "ftp.winehq.org", INTERNET_DEFAULT_FTP_PORT, "anonymous", NULL, INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
    if (hFtp)  /* some servers accept an empty password */
    {
        FUNC4 ( FUNC0() == ERROR_SUCCESS, "ERROR_SUCCESS, got %d\n", FUNC0());
        FUNC1(hFtp);
    }
    else
        FUNC4 ( FUNC0() == ERROR_INTERNET_LOGIN_FAILURE,
             "Expected ERROR_INTERNET_LOGIN_FAILURE, got %d\n", FUNC0());

    FUNC3(0xdeadbeef);
    hFtp = FUNC2(hInternet, "ftp.winehq.org", INTERNET_DEFAULT_FTP_PORT, NULL, "IEUser@", INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
    FUNC4 ( hFtp == NULL, "Expected InternetConnect to fail\n");
    FUNC4 ( FUNC0() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());

    FUNC3(0xdeadbeef);
    hFtp = FUNC2(hInternet, "ftp.winehq.org", INTERNET_DEFAULT_FTP_PORT, "", "IEUser@",
            INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
    FUNC4(!hFtp, "Expected InternetConnect to fail\n");
    FUNC4(FUNC0() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());

    /* Using a NULL username and password will be interpreted as anonymous ftp. The username will be 'anonymous' the password
     * is created via some simple heuristics (see dlls/wininet/ftp.c).
     * On Wine this registry key is not set by default so (NULL, NULL) will result in anonymous ftp with an (most likely) not
     * accepted password (the username).
     * If the first call fails because we get an ERROR_INTERNET_LOGIN_FAILURE, we try again with a (more) correct password.
     */

    FUNC3(0xdeadbeef);
    hFtp = FUNC2(hInternet, "ftp.winehq.org", INTERNET_DEFAULT_FTP_PORT, NULL, NULL, INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
    if (!hFtp && (FUNC0() == ERROR_INTERNET_LOGIN_FAILURE))
    {
        /* We are most likely running on a clean Wine install or a Windows install where the registry key is removed */
        FUNC3(0xdeadbeef);
        hFtp = FUNC2(hInternet, "ftp.winehq.org", INTERNET_DEFAULT_FTP_PORT, "anonymous", "IEUser@", INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
    }
    FUNC4 ( hFtp != NULL, "InternetConnect failed : %d\n", FUNC0());
    FUNC4 ( FUNC0() == ERROR_SUCCESS,
        "ERROR_SUCCESS, got %d\n", FUNC0());
    FUNC1(hFtp);

    FUNC3(0xdeadbeef);
    hFtp = FUNC2(hInternet, "ftp.winehq.org", INTERNET_DEFAULT_FTP_PORT, "", NULL,
            INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
    if (!hFtp)
    {
        FUNC4(FUNC0() == ERROR_INTERNET_LOGIN_FAILURE,
                "Expected ERROR_INTERNET_LOGIN_FAILURE, got %d\n", FUNC0());
    }
    else
    {
        FUNC4(FUNC0() == ERROR_SUCCESS,
                "Expected ERROR_SUCCESS, got %d\n", FUNC0());
        FUNC1(hFtp);
    }
}