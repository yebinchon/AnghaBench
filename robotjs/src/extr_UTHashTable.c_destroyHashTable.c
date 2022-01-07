
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * nodes; int * uttable; } ;
typedef TYPE_1__ UTHashTable ;
typedef int UTHashNode ;


 int HASH_DEL (int *,int *) ;
 int free (int *) ;

void destroyHashTable(UTHashTable *table)
{
 UTHashNode *uttable = table->uttable;
 UTHashNode *node;


 while (uttable != ((void*)0)) {
  node = uttable;
  HASH_DEL(uttable, node);
 }


 if (table->nodes != ((void*)0)) free(table->nodes);
 table->uttable = table->nodes = ((void*)0);
}
