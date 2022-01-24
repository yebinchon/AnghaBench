#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlDictPtr ;
struct TYPE_6__ {struct TYPE_6__* subdict; int /*<<< orphan*/  seed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

xmlDictPtr
FUNC3(xmlDictPtr sub) {
    xmlDictPtr dict = FUNC1();

    if ((dict != NULL) && (sub != NULL)) {
#ifdef DICT_DEBUG_PATTERNS
        fprintf(stderr, "R");
#endif
        dict->seed = sub->seed;
        dict->subdict = sub;
	FUNC2(dict->subdict);
    }
    return(dict);
}