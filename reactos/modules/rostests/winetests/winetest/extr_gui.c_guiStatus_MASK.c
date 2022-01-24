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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  IDC_SB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dialog ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (va_list ap)
{
    size_t len;
    char *str = FUNC2 (&len, ap);

    if (len > 128) str[129] = 0;
    FUNC0 (dialog, IDC_SB, str);
    FUNC1 (str);
    return 0;
}