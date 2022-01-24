#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_9__ {TYPE_5__* db; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_10__ {int /*<<< orphan*/  dict; } ;
struct TYPE_8__ {char* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 void* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,void*,unsigned long) ; 
 scalar_t__ FUNC11 (char*,int,char*,int,int /*<<< orphan*/ ) ; 

void FUNC12(client *c) {
    dictIterator *di;
    dictEntry *de;
    sds pattern = c->argv[1]->ptr;
    int plen = FUNC9(pattern), allkeys;
    unsigned long numkeys = 0;
    void *replylen = FUNC1(c);

    di = FUNC5(c->db->dict);
    allkeys = (pattern[0] == '*' && pattern[1] == '\0');
    while((de = FUNC6(di)) != NULL) {
        sds key = FUNC4(de);
        robj *keyobj;

        if (allkeys || FUNC11(pattern,plen,key,FUNC9(key),0)) {
            keyobj = FUNC2(key,FUNC9(key));
            if (!FUNC8(c->db,keyobj)) {
                FUNC0(c,keyobj);
                numkeys++;
            }
            FUNC3(keyobj);
        }
    }
    FUNC7(di);
    FUNC10(c,replylen,numkeys);
}