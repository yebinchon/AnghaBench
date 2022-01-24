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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static BOOL FUNC3(const WCHAR *strw, const char *prefix)
{
    int len, prefix_len;
    CHAR buf[512];

    len = FUNC0(CP_ACP, 0, strw, -1, buf, sizeof(buf), NULL, NULL)-1;
    prefix_len = FUNC2(prefix);
    if(len < prefix_len)
        return FALSE;

    buf[prefix_len] = 0;
    return !FUNC1(buf, prefix);
}