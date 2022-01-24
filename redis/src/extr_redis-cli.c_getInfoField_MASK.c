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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static char *FUNC5(char *info, char *field) {
    char *p = FUNC3(info,field);
    char *n1, *n2;
    char *result;

    if (!p) return NULL;
    p += FUNC2(field)+1;
    n1 = FUNC1(p,'\r');
    n2 = FUNC1(p,',');
    if (n2 && n2 < n1) n1 = n2;
    result = FUNC4(sizeof(char)*(n1-p)+1);
    FUNC0(result,p,(n1-p));
    result[n1-p] = '\0';
    return result;
}