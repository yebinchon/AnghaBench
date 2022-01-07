
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int level; int * tail; TYPE_3__* header; scalar_t__ length; } ;
typedef TYPE_2__ zskiplist ;
struct TYPE_8__ {int * backward; TYPE_1__* level; } ;
struct TYPE_6__ {scalar_t__ span; int * forward; } ;


 int ZSKIPLIST_MAXLEVEL ;
 TYPE_2__* zmalloc (int) ;
 TYPE_3__* zslCreateNode (int,int ,int *) ;

zskiplist *zslCreate(void) {
    int j;
    zskiplist *zsl;

    zsl = zmalloc(sizeof(*zsl));
    zsl->level = 1;
    zsl->length = 0;
    zsl->header = zslCreateNode(ZSKIPLIST_MAXLEVEL,0,((void*)0));
    for (j = 0; j < ZSKIPLIST_MAXLEVEL; j++) {
        zsl->header->level[j].forward = ((void*)0);
        zsl->header->level[j].span = 0;
    }
    zsl->header->backward = ((void*)0);
    zsl->tail = ((void*)0);
    return zsl;
}
