
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {void* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_11__ {void* (* dup ) (void*) ;int match; int free; } ;
typedef TYPE_2__ list ;


 int * listAddNodeTail (TYPE_2__*,void*) ;
 TYPE_2__* listCreate () ;
 TYPE_1__* listNext (int *) ;
 int listRelease (TYPE_2__*) ;
 int listRewind (TYPE_2__*,int *) ;
 void* stub1 (void*) ;

list *listDup(list *orig)
{
    list *copy;
    listIter iter;
    listNode *node;

    if ((copy = listCreate()) == ((void*)0))
        return ((void*)0);
    copy->dup = orig->dup;
    copy->free = orig->free;
    copy->match = orig->match;
    listRewind(orig, &iter);
    while((node = listNext(&iter)) != ((void*)0)) {
        void *value;

        if (copy->dup) {
            value = copy->dup(node->value);
            if (value == ((void*)0)) {
                listRelease(copy);
                return ((void*)0);
            }
        } else
            value = node->value;
        if (listAddNodeTail(copy, value) == ((void*)0)) {
            listRelease(copy);
            return ((void*)0);
        }
    }
    return copy;
}
