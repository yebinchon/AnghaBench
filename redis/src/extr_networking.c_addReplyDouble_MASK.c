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
typedef  int /*<<< orphan*/  sbuf ;
typedef  int /*<<< orphan*/  dbuf ;
struct TYPE_5__ {int resp; } ;
typedef  TYPE_1__ client ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_LONG_DOUBLE_CHARS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC2 (double) ; 
 int FUNC3 (char*,int,char*,double,...) ; 

void FUNC4(client *c, double d) {
    if (FUNC2(d)) {
        /* Libc in odd systems (Hi Solaris!) will format infinite in a
         * different way, so better to handle it in an explicit way. */
        if (c->resp == 2) {
            FUNC0(c, d > 0 ? "inf" : "-inf");
        } else {
            FUNC1(c, d > 0 ? ",inf\r\n" : ",-inf\r\n",
                              d > 0 ? 6 : 7);
        }
    } else {
        char dbuf[MAX_LONG_DOUBLE_CHARS+3],
             sbuf[MAX_LONG_DOUBLE_CHARS+32];
        int dlen, slen;
        if (c->resp == 2) {
            dlen = FUNC3(dbuf,sizeof(dbuf),"%.17g",d);
            slen = FUNC3(sbuf,sizeof(sbuf),"$%d\r\n%s\r\n",dlen,dbuf);
            FUNC1(c,sbuf,slen);
        } else {
            dlen = FUNC3(dbuf,sizeof(dbuf),",%.17g\r\n",d);
            FUNC1(c,dbuf,dlen);
        }
    }
}