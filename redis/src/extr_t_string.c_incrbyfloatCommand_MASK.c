#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_13__ {TYPE_2__* db; int /*<<< orphan*/ ** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_15__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_14__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_STRING ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (long double,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,long double*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (long double) ; 
 scalar_t__ FUNC10 (long double) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 

void FUNC15(client *c) {
    long double incr, value;
    robj *o, *new, *aux;

    o = FUNC11(c->db,c->argv[1]);
    if (o != NULL && FUNC2(c,o,OBJ_STRING)) return;
    if (FUNC8(c,o,&value,NULL) != C_OK ||
        FUNC8(c,c->argv[2],&incr,NULL) != C_OK)
        return;

    value += incr;
    if (FUNC10(value) || FUNC9(value)) {
        FUNC1(c,"increment would produce NaN or Infinity");
        return;
    }
    new = FUNC4(value,1);
    if (o)
        FUNC6(c->db,c->argv[1],new);
    else
        FUNC5(c->db,c->argv[1],new);
    FUNC14(c->db,c->argv[1]);
    FUNC12(NOTIFY_STRING,"incrbyfloat",c->argv[1],c->db->id);
    server.dirty++;
    FUNC0(c,new);

    /* Always replicate INCRBYFLOAT as a SET command with the final value
     * in order to make sure that differences in float precision or formatting
     * will not create differences in replicas or after an AOF restart. */
    aux = FUNC3("SET",3);
    FUNC13(c,0,aux);
    FUNC7(aux);
    FUNC13(c,2,new);
}