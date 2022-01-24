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
typedef  int /*<<< orphan*/  nsChannelBSC ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IWinInetHttpInfo ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_QUERY_RAW_HEADERS_CRLF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static void FUNC5(nsChannelBSC *This, IWinInetHttpInfo *wininet_info)
{
    const WCHAR *ptr;
    DWORD len = 0;
    WCHAR *buf;

    FUNC0(wininet_info, HTTP_QUERY_RAW_HEADERS_CRLF, NULL, &len, NULL, NULL);
    if(!len)
        return;

    buf = FUNC1(len);
    if(!buf)
        return;

    FUNC0(wininet_info, HTTP_QUERY_RAW_HEADERS_CRLF, buf, &len, NULL, NULL);
    if(!len) {
        FUNC2(buf);
        return;
    }

    ptr = FUNC4(buf, '\r');
    if(ptr && ptr[1] == '\n') {
        ptr += 2;
        FUNC3(This, ptr);
    }

    FUNC2(buf);
}