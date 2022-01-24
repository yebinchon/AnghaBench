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
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_2__ {int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDS_NOINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int client ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ server ; 

sds FUNC9(int type) {
    listNode *ln;
    listIter li;
    client *client;
    sds o = FUNC8(SDS_NOINIT,200*FUNC2(server.clients));
    FUNC7(o);
    FUNC5(server.clients,&li);
    while ((ln = FUNC3(&li)) != NULL) {
        client = FUNC4(ln);
        if (type != -1 && FUNC1(client) != type) continue;
        o = FUNC0(o,client);
        o = FUNC6(o,"\n",1);
    }
    return o;
}