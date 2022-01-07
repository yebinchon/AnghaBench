
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _ht {unsigned int count; TYPE_1__* chain; } ;
struct TYPE_6__ {unsigned int htsize; unsigned int count; TYPE_1__* first; struct _ht* ht; } ;
struct TYPE_5__ {struct TYPE_5__* next; int pKey; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ HashElem ;
typedef TYPE_2__ Hash ;


 int assert (int) ;
 scalar_t__ sqlite3StrICmp (int ,char const*) ;
 unsigned int strHash (char const*) ;

__attribute__((used)) static HashElem *findElementWithHash(
  const Hash *pH,
  const char *pKey,
  unsigned int *pHash
){
  HashElem *elem;
  unsigned int count;
  unsigned int h;
  static HashElem nullElement = { 0, 0, 0, 0 };

  if( pH->ht ){
    struct _ht *pEntry;
    h = strHash(pKey) % pH->htsize;
    pEntry = &pH->ht[h];
    elem = pEntry->chain;
    count = pEntry->count;
  }else{
    h = 0;
    elem = pH->first;
    count = pH->count;
  }
  if( pHash ) *pHash = h;
  while( count-- ){
    assert( elem!=0 );
    if( sqlite3StrICmp(elem->pKey,pKey)==0 ){
      return elem;
    }
    elem = elem->next;
  }
  return &nullElement;
}
