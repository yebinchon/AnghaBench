#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_27__ {TYPE_6__* db; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_29__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_28__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_STRING ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC1 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_6__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_6__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_8__ server ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,TYPE_1__*) ; 
 size_t FUNC11 (TYPE_1__*) ; 
 TYPE_1__* FUNC12 (TYPE_1__*) ; 

void FUNC13(client *c) {
    size_t totlen;
    robj *o, *append;

    o = FUNC6(c->db,c->argv[1]);
    if (o == NULL) {
        /* Create the key */
        c->argv[2] = FUNC12(c->argv[2]);
        FUNC3(c->db,c->argv[1],c->argv[2]);
        FUNC5(c->argv[2]);
        totlen = FUNC11(c->argv[2]);
    } else {
        /* Key exists, check type */
        if (FUNC2(c,o,OBJ_STRING))
            return;

        /* "append" is an argument, so always an sds */
        append = c->argv[2];
        totlen = FUNC11(o)+FUNC9(append->ptr);
        if (FUNC1(c,totlen) != C_OK)
            return;

        /* Append the value */
        o = FUNC4(c->db,c->argv[1],o);
        o->ptr = FUNC8(o->ptr,append->ptr,FUNC9(append->ptr));
        totlen = FUNC9(o->ptr);
    }
    FUNC10(c->db,c->argv[1]);
    FUNC7(NOTIFY_STRING,"append",c->argv[1],c->db->id);
    server.dirty++;
    FUNC0(c,totlen);
}