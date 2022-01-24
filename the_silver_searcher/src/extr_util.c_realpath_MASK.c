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
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 int /*<<< orphan*/  _MAX_PATH ; 
 char* FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 

char *FUNC2(const char *path, char *resolved_path) {
    char *p;
    char tmp[_MAX_PATH + 1];
    FUNC1(tmp, path, sizeof(tmp));
    p = tmp;
    while (*p) {
        if (*p == '/') {
            *p = '\\';
        }
        p++;
    }
    return FUNC0(resolved_path, tmp, _MAX_PATH);
}