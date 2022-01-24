#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sds ;
struct TYPE_29__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_30__ {TYPE_4__* db; TYPE_5__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_34__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_33__ {int /*<<< orphan*/  czero; } ;
struct TYPE_32__ {scalar_t__ ptr; } ;
struct TYPE_31__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_STRING ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,long) ; 
 scalar_t__ FUNC3 (TYPE_2__*,long) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_5__*,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_4__*,TYPE_5__*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_5__*,long*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,long) ; 
 long FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,long) ; 
 TYPE_8__ server ; 
 TYPE_6__ shared ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_5__*) ; 
 size_t FUNC16 (TYPE_1__*) ; 

void FUNC17(client *c) {
    robj *o;
    long offset;
    sds value = c->argv[3]->ptr;

    if (FUNC8(c,c->argv[2],&offset,NULL) != C_OK)
        return;

    if (offset < 0) {
        FUNC1(c,"offset is out of range");
        return;
    }

    o = FUNC9(c->db,c->argv[1]);
    if (o == NULL) {
        /* Return 0 when setting nothing on a non-existing string */
        if (FUNC13(value) == 0) {
            FUNC0(c,shared.czero);
            return;
        }

        /* Return when the resulting string exceeds allowed size */
        if (FUNC3(c,offset+FUNC13(value)) != C_OK)
            return;

        o = FUNC5(OBJ_STRING,FUNC14(NULL, offset+FUNC13(value)));
        FUNC6(c->db,c->argv[1],o);
    } else {
        size_t olen;

        /* Key exists, check type */
        if (FUNC4(c,o,OBJ_STRING))
            return;

        /* Return existing string length when setting nothing */
        olen = FUNC16(o);
        if (FUNC13(value) == 0) {
            FUNC2(c,olen);
            return;
        }

        /* Return when the resulting string exceeds allowed size */
        if (FUNC3(c,offset+FUNC13(value)) != C_OK)
            return;

        /* Create a copy when the object is shared or encoded. */
        o = FUNC7(c->db,c->argv[1],o);
    }

    if (FUNC13(value) > 0) {
        o->ptr = FUNC12(o->ptr,offset+FUNC13(value));
        FUNC10((char*)o->ptr+offset,value,FUNC13(value));
        FUNC15(c->db,c->argv[1]);
        FUNC11(NOTIFY_STRING,
            "setrange",c->argv[1],c->db->id);
        server.dirty++;
    }
    FUNC2(c,FUNC13(o->ptr));
}