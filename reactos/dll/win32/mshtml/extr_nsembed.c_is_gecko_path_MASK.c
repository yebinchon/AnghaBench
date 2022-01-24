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
typedef  char WCHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  URL_UNESCAPE_INPLACE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gecko_path ; 
 size_t gecko_path_len ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char*) ; 

BOOL FUNC5(const char *path)
{
    WCHAR *buf, *ptr;
    BOOL ret;

    buf = FUNC2(path);
    if(!buf || FUNC4(buf) < gecko_path_len)
        return FALSE;

    for(ptr = buf; *ptr; ptr++) {
        if(*ptr == '\\')
            *ptr = '/';
    }

    FUNC0(buf, NULL, NULL, URL_UNESCAPE_INPLACE);
    buf[gecko_path_len] = 0;

    ret = !FUNC3(buf, gecko_path);
    FUNC1(buf);
    return ret;
}