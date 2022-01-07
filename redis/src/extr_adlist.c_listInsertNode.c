
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* prev; struct TYPE_7__* next; void* value; } ;
typedef TYPE_1__ listNode ;
struct TYPE_8__ {int len; TYPE_1__* head; TYPE_1__* tail; } ;
typedef TYPE_2__ list ;


 TYPE_1__* zmalloc (int) ;

list *listInsertNode(list *list, listNode *old_node, void *value, int after) {
    listNode *node;

    if ((node = zmalloc(sizeof(*node))) == ((void*)0))
        return ((void*)0);
    node->value = value;
    if (after) {
        node->prev = old_node;
        node->next = old_node->next;
        if (list->tail == old_node) {
            list->tail = node;
        }
    } else {
        node->next = old_node;
        node->prev = old_node->prev;
        if (list->head == old_node) {
            list->head = node;
        }
    }
    if (node->prev != ((void*)0)) {
        node->prev->next = node;
    }
    if (node->next != ((void*)0)) {
        node->next->prev = node;
    }
    list->len++;
    return list;
}
