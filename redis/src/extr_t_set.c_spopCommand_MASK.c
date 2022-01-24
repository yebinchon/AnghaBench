#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_10__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_26__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_27__ {int argc; size_t resp; int /*<<< orphan*/ * argv; TYPE_5__* db; } ;
typedef  TYPE_2__ client ;
struct TYPE_29__ {int /*<<< orphan*/ * null; int /*<<< orphan*/  syntaxerr; } ;
struct TYPE_28__ {int /*<<< orphan*/  id; } ;
struct TYPE_25__ {int /*<<< orphan*/  dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_SET ; 
 int OBJ_ENCODING_INTSET ; 
 int /*<<< orphan*/  OBJ_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (char*,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC11 (char*) ; 
 TYPE_10__ server ; 
 int FUNC12 (TYPE_1__*,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 TYPE_6__ shared ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

void FUNC17(client *c) {
    robj *set, *ele, *aux;
    sds sdsele;
    int64_t llele;
    int encoding;

    if (c->argc == 3) {
        FUNC16(c);
        return;
    } else if (c->argc > 3) {
        FUNC0(c,shared.syntaxerr);
        return;
    }

    /* Make sure a key with the name inputted exists, and that it's type is
     * indeed a set */
    if ((set = FUNC8(c,c->argv[1],shared.null[c->resp]))
         == NULL || FUNC2(c,set,OBJ_SET)) return;

    /* Get a random element from the set */
    encoding = FUNC12(set,&sdsele,&llele);

    /* Remove the element from the set */
    if (encoding == OBJ_ENCODING_INTSET) {
        ele = FUNC4(llele);
        set->ptr = FUNC7(set->ptr,llele,NULL);
    } else {
        ele = FUNC3(sdsele,FUNC11(sdsele));
        FUNC13(set,ele->ptr);
    }

    FUNC9(NOTIFY_SET,"spop",c->argv[1],c->db->id);

    /* Replicate/AOF this command as an SREM operation */
    aux = FUNC3("SREM",4);
    FUNC10(c,3,aux,c->argv[1],ele);
    FUNC6(aux);

    /* Add the element to the reply */
    FUNC1(c,ele);
    FUNC6(ele);

    /* Delete the set if it's empty */
    if (FUNC14(set) == 0) {
        FUNC5(c->db,c->argv[1]);
        FUNC9(NOTIFY_GENERIC,"del",c->argv[1],c->db->id);
    }

    /* Set has been modified */
    FUNC15(c->db,c->argv[1]);
    server.dirty++;
}