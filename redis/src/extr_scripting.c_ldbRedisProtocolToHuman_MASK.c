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
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 

char *FUNC9(sds *o, char *reply) {
    char *p = reply;
    switch(*p) {
    case ':': p = FUNC3(o,reply); break;
    case '$': p = FUNC1(o,reply); break;
    case '+': p = FUNC8(o,reply); break;
    case '-': p = FUNC8(o,reply); break;
    case '*': p = FUNC5(o,reply); break;
    case '~': p = FUNC7(o,reply); break;
    case '%': p = FUNC4(o,reply); break;
    case '_': p = FUNC6(o,reply); break;
    case '#': p = FUNC0(o,reply); break;
    case ',': p = FUNC2(o,reply); break;
    }
    return p;
}