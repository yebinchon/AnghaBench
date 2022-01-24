#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlDictPtr ;
typedef  int /*<<< orphan*/  xmlDictEntry ;
typedef  int /*<<< orphan*/  xmlDict ;
struct TYPE_4__ {int ref_counter; int size; scalar_t__ seed; void* dict; int /*<<< orphan*/ * subdict; int /*<<< orphan*/ * strings; scalar_t__ nbElems; scalar_t__ limit; } ;

/* Variables and functions */
 int MIN_DICT_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  xmlDictInitialized ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (int) ; 

xmlDictPtr
FUNC6(void) {
    xmlDictPtr dict;

    if (!xmlDictInitialized)
        if (!FUNC0())
            return(NULL);

#ifdef DICT_DEBUG_PATTERNS
    fprintf(stderr, "C");
#endif

    dict = FUNC5(sizeof(xmlDict));
    if (dict) {
        dict->ref_counter = 1;
        dict->limit = 0;

        dict->size = MIN_DICT_SIZE;
	dict->nbElems = 0;
        dict->dict = FUNC5(MIN_DICT_SIZE * sizeof(xmlDictEntry));
	dict->strings = NULL;
	dict->subdict = NULL;
        if (dict->dict) {
	    FUNC3(dict->dict, 0, MIN_DICT_SIZE * sizeof(xmlDictEntry));
#ifdef DICT_RANDOMIZATION
            dict->seed = __xmlRandom();
#else
            dict->seed = 0;
#endif
	    return(dict);
        }
        FUNC4(dict);
    }
    return(NULL);
}