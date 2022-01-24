#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int exp_offsetret1; int exp_offsetret2; int exp_offsetret3; scalar_t__ string; int /*<<< orphan*/  delimiter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* testcases_strtok ; 

__attribute__((used)) static void FUNC3(void)
{
    int i;
    char *strret;
    char teststr[100];
    for( i = 0; testcases_strtok[i].string; i++){
        FUNC1( teststr, testcases_strtok[i].string);
        strret = FUNC2( teststr, testcases_strtok[i].delimiter);
        FUNC0( (int)(strret - teststr) ==  testcases_strtok[i].exp_offsetret1 ||
                (!strret && testcases_strtok[i].exp_offsetret1 == -1),
                "string (%p) \'%s\' return %p\n",
                teststr, testcases_strtok[i].string, strret);
        if( !strret) continue;
        strret = FUNC2( NULL, testcases_strtok[i].delimiter);
        FUNC0( (int)(strret - teststr) ==  testcases_strtok[i].exp_offsetret2 ||
                (!strret && testcases_strtok[i].exp_offsetret2 == -1),
                "second call string (%p) \'%s\' return %p\n",
                teststr, testcases_strtok[i].string, strret);
        if( !strret) continue;
        strret = FUNC2( NULL, testcases_strtok[i].delimiter);
        FUNC0( (int)(strret - teststr) ==  testcases_strtok[i].exp_offsetret3 ||
                (!strret && testcases_strtok[i].exp_offsetret3 == -1),
                "third call string (%p) \'%s\' return %p\n",
                teststr, testcases_strtok[i].string, strret);
    }
}