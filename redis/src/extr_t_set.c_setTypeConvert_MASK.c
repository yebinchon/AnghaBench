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
typedef  int /*<<< orphan*/  setTypeIterator ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_5__ {scalar_t__ type; int encoding; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  dict ;

/* Variables and functions */
 scalar_t__ DICT_OK ; 
 int OBJ_ENCODING_HT ; 
 int OBJ_ENCODING_INTSET ; 
 scalar_t__ OBJ_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  setDictType ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(robj *setobj, int enc) {
    setTypeIterator *si;
    FUNC6(NULL,setobj,setobj->type == OBJ_SET &&
                             setobj->encoding == OBJ_ENCODING_INTSET);

    if (enc == OBJ_ENCODING_HT) {
        int64_t intele;
        dict *d = FUNC1(&setDictType,NULL);
        sds element;

        /* Presize the dict to avoid rehashing */
        FUNC2(d,FUNC3(setobj->ptr));

        /* To add the elements we extract integers and create redis objects */
        si = FUNC8(setobj);
        while (FUNC9(si,&element,&intele) != -1) {
            element = FUNC4(intele);
            FUNC5(FUNC0(d,element,NULL) == DICT_OK);
        }
        FUNC10(si);

        setobj->encoding = OBJ_ENCODING_HT;
        FUNC11(setobj->ptr);
        setobj->ptr = d;
    } else {
        FUNC7("Unsupported set conversion");
    }
}