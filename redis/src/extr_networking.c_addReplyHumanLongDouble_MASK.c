#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_5__ {int resp; } ;
typedef  TYPE_1__ client ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  LD_STR_HUMAN ; 
 int MAX_LONG_DOUBLE_CHARS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (long double,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int,long double,int /*<<< orphan*/ ) ; 

void FUNC5(client *c, long double d) {
    if (c->resp == 2) {
        robj *o = FUNC2(d,1);
        FUNC0(c,o);
        FUNC3(o);
    } else {
        char buf[MAX_LONG_DOUBLE_CHARS];
        int len = FUNC4(buf,sizeof(buf),d,LD_STR_HUMAN);
        FUNC1(c,",",1);
        FUNC1(c,buf,len);
        FUNC1(c,"\r\n",2);
    }
}