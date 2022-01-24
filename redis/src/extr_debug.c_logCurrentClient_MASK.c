#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_11__ {scalar_t__ ptr; } ;
typedef  TYPE_2__ robj ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_12__ {int argc; TYPE_1__* db; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_3__ client ;
struct TYPE_13__ {TYPE_3__* current_client; } ;
struct TYPE_10__ {int /*<<< orphan*/  dict; } ;

/* Variables and functions */
 int LL_RAW ; 
 int LL_WARNING ; 
 char* FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 

void FUNC10(void) {
    if (server.current_client == NULL) return;

    client *cc = server.current_client;
    sds client;
    int j;

    FUNC9(LL_WARNING|LL_RAW, "\n------ CURRENT CLIENT INFO ------\n");
    client = FUNC0(FUNC5(),cc);
    FUNC7(LL_WARNING|LL_RAW,"%s\n", client);
    FUNC6(client);
    for (j = 0; j < cc->argc; j++) {
        robj *decoded;

        decoded = FUNC4(cc->argv[j]);
        FUNC7(LL_WARNING|LL_RAW,"argv[%d]: '%s'\n", j,
            (char*)decoded->ptr);
        FUNC1(decoded);
    }
    /* Check if the first argument, usually a key, is found inside the
     * selected DB, and if so print info about the associated object. */
    if (cc->argc >= 1) {
        robj *val, *key;
        dictEntry *de;

        key = FUNC4(cc->argv[1]);
        de = FUNC2(cc->db->dict, key->ptr);
        if (de) {
            val = FUNC3(de);
            FUNC7(LL_WARNING,"key '%s' found in DB containing the following object:", (char*)key->ptr);
            FUNC8(val);
        }
        FUNC1(key);
    }
}