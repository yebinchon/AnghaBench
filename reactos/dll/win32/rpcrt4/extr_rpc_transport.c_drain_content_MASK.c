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
typedef  int /*<<< orphan*/  len ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  RpcHttpAsyncData ;
typedef  int /*<<< orphan*/  HINTERNET ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int HTTP_QUERY_CONTENT_LENGTH ; 
 int HTTP_QUERY_FLAG_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC3(HINTERNET request, RpcHttpAsyncData *async_data, HANDLE cancel_event)
{
    DWORD count, len = 0, size = sizeof(len);
    char buf[2048];

    FUNC0(request, HTTP_QUERY_FLAG_NUMBER|HTTP_QUERY_CONTENT_LENGTH, &len, &size, NULL);
    if (!len) return;
    for (;;)
    {
        count = FUNC1(sizeof(buf), len);
        if (FUNC2(request, async_data, cancel_event, buf, count) <= 0) return;
        len -= count;
    }
}