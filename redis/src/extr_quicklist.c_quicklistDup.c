
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ encoding; size_t sz; scalar_t__ count; void* zl; struct TYPE_10__* next; } ;
typedef TYPE_1__ quicklistNode ;
struct TYPE_11__ {int sz; } ;
typedef TYPE_2__ quicklistLZF ;
struct TYPE_12__ {int tail; int count; TYPE_1__* head; int compress; int fill; } ;
typedef TYPE_3__ quicklist ;


 scalar_t__ QUICKLIST_NODE_ENCODING_LZF ;
 scalar_t__ QUICKLIST_NODE_ENCODING_RAW ;
 int _quicklistInsertNodeAfter (TYPE_3__*,int ,TYPE_1__*) ;
 int memcpy (void*,void*,size_t) ;
 TYPE_1__* quicklistCreateNode () ;
 TYPE_3__* quicklistNew (int ,int ) ;
 void* zmalloc (size_t) ;

quicklist *quicklistDup(quicklist *orig) {
    quicklist *copy;

    copy = quicklistNew(orig->fill, orig->compress);

    for (quicklistNode *current = orig->head; current;
         current = current->next) {
        quicklistNode *node = quicklistCreateNode();

        if (current->encoding == QUICKLIST_NODE_ENCODING_LZF) {
            quicklistLZF *lzf = (quicklistLZF *)current->zl;
            size_t lzf_sz = sizeof(*lzf) + lzf->sz;
            node->zl = zmalloc(lzf_sz);
            memcpy(node->zl, current->zl, lzf_sz);
        } else if (current->encoding == QUICKLIST_NODE_ENCODING_RAW) {
            node->zl = zmalloc(current->sz);
            memcpy(node->zl, current->zl, current->sz);
        }

        node->count = current->count;
        copy->count += node->count;
        node->sz = current->sz;
        node->encoding = current->encoding;

        _quicklistInsertNodeAfter(copy, copy->tail, node);
    }


    return copy;
}
