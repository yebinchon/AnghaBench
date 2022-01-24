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
struct TYPE_5__ {struct TYPE_5__* nextPtr; void* value; void* key; } ;
typedef  TYPE_1__ list_item_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 void* FUNC1 (char const*) ; 

__attribute__((used)) static list_item_t *
FUNC2(list_item_t **listPtrPtr, const char *key, const char *value)
{
    list_item_t *itemPtr = FUNC0(sizeof(list_item_t));
    if (itemPtr) {
	itemPtr->key = FUNC1(key);
	itemPtr->value = FUNC1(value);
	itemPtr->nextPtr = NULL;

	while(*listPtrPtr) {
	    listPtrPtr = &(*listPtrPtr)->nextPtr;
	}
	*listPtrPtr = itemPtr;
    }
    return itemPtr;
}