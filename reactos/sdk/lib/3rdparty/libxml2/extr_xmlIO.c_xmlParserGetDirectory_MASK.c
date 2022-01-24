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

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 scalar_t__ xmlInputCallbackInitialized ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

char *
FUNC6(const char *filename) {
    char *ret = NULL;
    char dir[1024];
    char *cur;

#ifdef _WIN32_WCE  /* easy way by now ... wince does not have dirs! */
    return NULL;
#endif

    if (xmlInputCallbackInitialized == 0)
	FUNC5();

    if (filename == NULL) return(NULL);

#if defined(_WIN32) && !defined(__CYGWIN__)
#   define IS_XMLPGD_SEP(ch) ((ch=='/')||(ch=='\\'))
#else
#   define IS_XMLPGD_SEP(ch) (ch=='/')
#endif

    FUNC3(dir, filename, 1023);
    dir[1023] = 0;
    cur = &dir[FUNC2(dir)];
    while (cur > dir) {
         if (IS_XMLPGD_SEP(*cur)) break;
	 cur --;
    }
    if (IS_XMLPGD_SEP(*cur)) {
        if (cur == dir) dir[1] = 0;
	else *cur = 0;
	ret = FUNC4(dir);
    } else {
        if (FUNC1(dir, 1024) != NULL) {
	    dir[1023] = 0;
	    ret = FUNC4(dir);
	}
    }
    return(ret);
#undef IS_XMLPGD_SEP
}