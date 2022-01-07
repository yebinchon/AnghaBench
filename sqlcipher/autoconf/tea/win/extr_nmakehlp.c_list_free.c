
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* value; struct TYPE_4__* key; struct TYPE_4__* nextPtr; } ;
typedef TYPE_1__ list_item_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
list_free(list_item_t **listPtrPtr)
{
    list_item_t *tmpPtr, *listPtr = *listPtrPtr;
    while (listPtr) {
 tmpPtr = listPtr;
 listPtr = listPtr->nextPtr;
 free(tmpPtr->key);
 free(tmpPtr->value);
 free(tmpPtr);
    }
}
