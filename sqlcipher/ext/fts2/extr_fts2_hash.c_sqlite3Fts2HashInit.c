
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keyClass; int copyKey; scalar_t__ ht; scalar_t__ htsize; scalar_t__ count; scalar_t__ first; } ;
typedef TYPE_1__ fts2Hash ;


 int FTS2_HASH_BINARY ;
 int FTS2_HASH_STRING ;
 int assert (int) ;

void sqlite3Fts2HashInit(fts2Hash *pNew, int keyClass, int copyKey){
  assert( pNew!=0 );
  assert( keyClass>=FTS2_HASH_STRING && keyClass<=FTS2_HASH_BINARY );
  pNew->keyClass = keyClass;
  pNew->copyKey = copyKey;
  pNew->first = 0;
  pNew->count = 0;
  pNew->htsize = 0;
  pNew->ht = 0;
}
