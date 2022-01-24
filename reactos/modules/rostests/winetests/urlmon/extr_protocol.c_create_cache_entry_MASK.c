#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  content ;
typedef  int /*<<< orphan*/  cache_headers ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  LowPart; int /*<<< orphan*/  HighPart; } ;
struct TYPE_8__ {int QuadPart; TYPE_1__ u; } ;
typedef  TYPE_2__ ULARGE_INTEGER ;
struct TYPE_9__ {int /*<<< orphan*/  dwLowDateTime; int /*<<< orphan*/  dwHighDateTime; } ;
typedef  int LONGLONG ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_3__ FILETIME ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  char BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,TYPE_3__,TYPE_3__,int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  NORMAL_CACHE_ENTRY ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC10(const WCHAR *urlw)
{
    FILETIME now, tomorrow, yesterday;
    char file_path[MAX_PATH];
    BYTE content[1000];
    ULARGE_INTEGER li;
    const char *url;
    HANDLE file;
    DWORD size;
    unsigned i;
    BOOL res;

    BYTE cache_headers[] = "HTTP/1.1 200 OK\r\n\r\n";

    FUNC8("Testing cache read...\n");

    url = FUNC9(urlw);

    for(i = 0; i < sizeof(content); i++)
        content[i] = '0' + (i%10);

    FUNC5(&now);
    li.u.HighPart = now.dwHighDateTime;
    li.u.LowPart = now.dwLowDateTime;
    li.QuadPart += (LONGLONG)10000000 * 3600 * 24;
    tomorrow.dwHighDateTime = li.u.HighPart;
    tomorrow.dwLowDateTime = li.u.LowPart;
    li.QuadPart -= (LONGLONG)10000000 * 3600 * 24 * 2;
    yesterday.dwHighDateTime = li.u.HighPart;
    yesterday.dwLowDateTime = li.u.LowPart;

    res = FUNC3(url, sizeof(content), "", file_path, 0);
    FUNC7(res, "CreateUrlCacheEntryA failed: %u\n", FUNC4());

    file = FUNC2(file_path, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC7(file != INVALID_HANDLE_VALUE, "CreateFile failed\n");

    FUNC6(file, content, sizeof(content), &size, NULL);
    FUNC0(file);

    res = FUNC1(url, file_path, tomorrow, yesterday, NORMAL_CACHE_ENTRY,
                               cache_headers, sizeof(cache_headers)-1, "", 0);
    FUNC7(res, "CommitUrlCacheEntryA failed: %u\n", FUNC4());
}