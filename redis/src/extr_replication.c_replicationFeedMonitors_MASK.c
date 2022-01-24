#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_13__ {scalar_t__ encoding; scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_14__ {TYPE_3__* value; } ;
typedef  TYPE_2__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_15__ {int flags; } ;
typedef  TYPE_3__ client ;
struct TYPE_16__ {int /*<<< orphan*/  unixsocket; } ;

/* Variables and functions */
 int CLIENT_LUA ; 
 int CLIENT_UNIX_SOCKET ; 
 scalar_t__ OBJ_ENCODING_INT ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,long,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 TYPE_4__ server ; 

void FUNC12(client *c, list *monitors, int dictid, robj **argv, int argc) {
    listNode *ln;
    listIter li;
    int j;
    sds cmdrepr = FUNC11("+");
    robj *cmdobj;
    struct timeval tv;

    FUNC4(&tv,NULL);
    cmdrepr = FUNC8(cmdrepr,"%ld.%06ld ",(long)tv.tv_sec,(long)tv.tv_usec);
    if (c->flags & CLIENT_LUA) {
        cmdrepr = FUNC8(cmdrepr,"[%d lua] ",dictid);
    } else if (c->flags & CLIENT_UNIX_SOCKET) {
        cmdrepr = FUNC8(cmdrepr,"[%d unix:%s] ",dictid,server.unixsocket);
    } else {
        cmdrepr = FUNC8(cmdrepr,"[%d %s] ",dictid,FUNC3(c));
    }

    for (j = 0; j < argc; j++) {
        if (argv[j]->encoding == OBJ_ENCODING_INT) {
            cmdrepr = FUNC8(cmdrepr, "\"%ld\"", (long)argv[j]->ptr);
        } else {
            cmdrepr = FUNC9(cmdrepr,(char*)argv[j]->ptr,
                        FUNC10(argv[j]->ptr));
        }
        if (j != argc-1)
            cmdrepr = FUNC7(cmdrepr," ",1);
    }
    cmdrepr = FUNC7(cmdrepr,"\r\n",2);
    cmdobj = FUNC1(OBJ_STRING,cmdrepr);

    FUNC6(monitors,&li);
    while((ln = FUNC5(&li))) {
        client *monitor = ln->value;
        FUNC0(monitor,cmdobj);
    }
    FUNC2(cmdobj);
}