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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 

sds FUNC5(sds o, char *s, size_t len, char *color) {
    if (!FUNC0()) return FUNC3(o,s,len);

    int bold = FUNC4(color,"bold") != NULL;
    int ccode = 37; /* Defaults to white. */
    if (FUNC4(color,"red")) ccode = 31;
    else if (FUNC4(color,"green")) ccode = 32;
    else if (FUNC4(color,"yellow")) ccode = 33;
    else if (FUNC4(color,"blue")) ccode = 34;
    else if (FUNC4(color,"magenta")) ccode = 35;
    else if (FUNC4(color,"cyan")) ccode = 36;
    else if (FUNC4(color,"white")) ccode = 37;

    o = FUNC2(o,"\033[%i;%i;49m",bold,ccode);
    o = FUNC3(o,s,len);
    o = FUNC1(o,"\033[0m");
    return o;
}