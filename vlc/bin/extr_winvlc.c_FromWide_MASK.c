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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (size_t) ; 

__attribute__((used)) static char *FUNC2 (const wchar_t *wide)
{
    size_t len;
    len = FUNC0 (CP_UTF8, 0, wide, -1, NULL, 0, NULL, NULL);

    char *out = (char *)FUNC1 (len);
    if (out)
        FUNC0 (CP_UTF8, 0, wide, -1, out, len, NULL, NULL);
    return out;
}