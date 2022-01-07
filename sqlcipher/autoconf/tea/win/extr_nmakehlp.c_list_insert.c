
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* nextPtr; void* value; void* key; } ;
typedef TYPE_1__ list_item_t ;


 TYPE_1__* malloc (int) ;
 void* strdup (char const*) ;

__attribute__((used)) static list_item_t *
list_insert(list_item_t **listPtrPtr, const char *key, const char *value)
{
    list_item_t *itemPtr = malloc(sizeof(list_item_t));
    if (itemPtr) {
 itemPtr->key = strdup(key);
 itemPtr->value = strdup(value);
 itemPtr->nextPtr = ((void*)0);

 while(*listPtrPtr) {
     listPtrPtr = &(*listPtrPtr)->nextPtr;
 }
 *listPtrPtr = itemPtr;
    }
    return itemPtr;
}
