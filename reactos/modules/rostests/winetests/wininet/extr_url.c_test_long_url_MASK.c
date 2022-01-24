#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  long_buf ;
struct TYPE_6__ {char* member_0; int member_2; int member_4; int member_5; int member_6; int member_7; int member_8; int member_10; int member_12; int member_13; int member_14; int member_15; char* member_16; char* member_17; char* member_18; char* member_19; char* member_20; char* member_21; int /*<<< orphan*/  member_11; int /*<<< orphan*/  member_9; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_1__ crack_url_test_t ;
struct TYPE_7__ {char* lpszExtraInfo; char* lpszScheme; } ;
typedef  TYPE_2__ URL_COMPONENTSA ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  INTERNET_SCHEME_HTTP ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(void)
{
    char long_buf[6000];
    char long_url[sizeof(long_buf) + 1000];
    crack_url_test_t test_long_path =
        {long_url, 0, 4, INTERNET_SCHEME_HTTP, 7, 14, -1, 80, -1, 0, -1, 0, 21, sizeof(long_buf)-1, -1, 0,
         "http", "www.winehq.org", "", "", long_buf, ""};
    crack_url_test_t test_long_extra =
        {long_url, 0, 4, INTERNET_SCHEME_HTTP, 7, 14, -1, 80, -1, 0, -1, 0, 21, 6, 27, sizeof(long_buf)-1,
         "http", "www.winehq.org", "", "", "/path/", long_buf};
    URL_COMPONENTSA url_comp;
    BOOL b;

    FUNC2(long_buf, 'x', sizeof(long_buf));
    long_buf[0] = '/';
    long_buf[sizeof(long_buf)-1] = 0;

    FUNC5(long_url, "http://www.winehq.org");
    FUNC4(long_url, long_buf);
    FUNC7(&test_long_path);

    FUNC5(long_url, "http://www.winehq.org/path/");
    long_buf[0] = '#';
    FUNC4(long_url, long_buf);
    FUNC7(&test_long_extra);

    FUNC8(&url_comp, 0, 0, 0, 0, 0, 100);
    url_comp.lpszExtraInfo = long_buf;
    b = FUNC1(long_url, FUNC6(long_url), 0, &url_comp);
    FUNC3(!b && FUNC0() == ERROR_INSUFFICIENT_BUFFER, "InternetCrackUrlA returned %x with error %d\n", b, FUNC0());

    FUNC8(&url_comp, 4, 0, 0, 0, 0, 0);
    url_comp.lpszScheme = long_buf;
    b = FUNC1(long_url, FUNC6(long_url), 0, &url_comp);
    FUNC3(!b && FUNC0() == ERROR_INSUFFICIENT_BUFFER, "InternetCrackUrlA returned %x with error %d\n", b, FUNC0());
}