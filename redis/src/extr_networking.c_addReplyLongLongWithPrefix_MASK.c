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
typedef  int /*<<< orphan*/  client ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/ * bulkhdr; int /*<<< orphan*/ * mbulkhdr; } ;

/* Variables and functions */
 long long OBJ_SHARED_BULKHDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (char*,int,long long) ; 
 TYPE_1__ shared ; 

void FUNC3(client *c, long long ll, char prefix) {
    char buf[128];
    int len;

    /* Things like $3\r\n or *2\r\n are emitted very often by the protocol
     * so we have a few shared objects to use if the integer is small
     * like it is most of the times. */
    if (prefix == '*' && ll < OBJ_SHARED_BULKHDR_LEN && ll >= 0) {
        FUNC0(c,shared.mbulkhdr[ll]);
        return;
    } else if (prefix == '$' && ll < OBJ_SHARED_BULKHDR_LEN && ll >= 0) {
        FUNC0(c,shared.bulkhdr[ll]);
        return;
    }

    buf[0] = prefix;
    len = FUNC2(buf+1,sizeof(buf)-1,ll);
    buf[len+1] = '\r';
    buf[len+2] = '\n';
    FUNC1(c,buf,len+3);
}