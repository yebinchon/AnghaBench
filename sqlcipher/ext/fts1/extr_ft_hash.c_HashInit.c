
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keyClass; int copyKey; int xFree; int xMalloc; scalar_t__ ht; scalar_t__ htsize; scalar_t__ count; scalar_t__ first; } ;
typedef TYPE_1__ Hash ;


 int HASH_BINARY ;
 int HASH_INT ;
 int HASH_POINTER ;
 int HASH_STRING ;
 int assert (int) ;
 int free ;
 int malloc_and_zero ;

void HashInit(Hash *pNew, int keyClass, int copyKey){
  assert( pNew!=0 );
  assert( keyClass>=HASH_STRING && keyClass<=HASH_BINARY );
  pNew->keyClass = keyClass;



  pNew->copyKey = copyKey;
  pNew->first = 0;
  pNew->count = 0;
  pNew->htsize = 0;
  pNew->ht = 0;
  pNew->xMalloc = malloc_and_zero;
  pNew->xFree = free;
}
