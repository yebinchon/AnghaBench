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
struct TYPE_5__ {int flags; int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ client ;

/* Variables and functions */
 int CLIENT_PROTECTED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  readQueryFromClient ; 

void FUNC3(client *c) {
    if (c->flags & CLIENT_PROTECTED) {
        c->flags &= ~CLIENT_PROTECTED;
        FUNC2(c->conn,readQueryFromClient);
        if (FUNC0(c)) FUNC1(c);
    }
}