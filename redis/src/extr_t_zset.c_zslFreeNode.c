
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ele; } ;
typedef TYPE_1__ zskiplistNode ;


 int sdsfree (int ) ;
 int zfree (TYPE_1__*) ;

void zslFreeNode(zskiplistNode *node) {
    sdsfree(node->ele);
    zfree(node);
}
