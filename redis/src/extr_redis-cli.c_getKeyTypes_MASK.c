#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  typeinfo ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_9__ {unsigned int elements; scalar_t__ type; char* str; TYPE_1__** element; } ;
typedef  TYPE_2__ redisReply ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;
struct TYPE_10__ {int err; char* errstr; } ;
struct TYPE_8__ {char* str; } ;

/* Variables and functions */
 scalar_t__ REDIS_OK ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 scalar_t__ REDIS_REPLY_STATUS ; 
 TYPE_3__* context ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,char*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  type_other ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(dict *types_dict, redisReply *keys, typeinfo **types) {
    redisReply *reply;
    unsigned int i;

    /* Pipeline TYPE commands */
    for(i=0;i<keys->elements;i++) {
        FUNC5(context, "TYPE %s", keys->element[i]->str);
    }

    /* Retrieve types */
    for(i=0;i<keys->elements;i++) {
        if(FUNC6(context, (void**)&reply)!=REDIS_OK) {
            FUNC3(stderr, "Error getting type for key '%ld' (%d: %s)\n",
                keys->element[i]->str, context->err, context->errstr);
            FUNC2(1);
        } else if(reply->type != REDIS_REPLY_STATUS) {
            if(reply->type == REDIS_REPLY_ERROR) {
                FUNC3(stderr, "TYPE returned an error: %ld\n", reply->str);
            } else {
                FUNC3(stderr,
                    "Invalid reply type (%ld) for TYPE on key '%s'!\n",
                    reply->type, keys->element[i]->str);
            }
            FUNC2(1);
        }

        sds typereply = FUNC8(reply->str);
        dictEntry *de = FUNC0(types_dict, typereply);
        FUNC7(typereply);
        typeinfo *type = NULL;
        if (de)
            type = FUNC1(de);
        else if (FUNC9(reply->str, "none")) /* create new types for modules, (but not for deleted keys) */
            type = FUNC10(types_dict, reply->str, &type_other);
        types[i] = type;
        FUNC4(reply);
    }
}