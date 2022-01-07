
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* zl; scalar_t__ count; int sz; } ;
typedef TYPE_1__ quicklistNode ;
struct TYPE_8__ {int count; int tail; } ;
typedef TYPE_2__ quicklist ;


 int _quicklistInsertNodeAfter (TYPE_2__*,int ,TYPE_1__*) ;
 TYPE_1__* quicklistCreateNode () ;
 int ziplistBlobLen (unsigned char*) ;
 scalar_t__ ziplistLen (unsigned char*) ;

void quicklistAppendZiplist(quicklist *quicklist, unsigned char *zl) {
    quicklistNode *node = quicklistCreateNode();

    node->zl = zl;
    node->count = ziplistLen(node->zl);
    node->sz = ziplistBlobLen(zl);

    _quicklistInsertNodeAfter(quicklist, quicklist->tail, node);
    quicklist->count += node->count;
}
