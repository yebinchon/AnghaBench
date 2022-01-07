
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int count; int htsize; int * ht; } ;
struct TYPE_11__ {char const* pKey; void* data; } ;
typedef TYPE_1__ HashElem ;
typedef TYPE_2__ Hash ;


 int assert (int) ;
 TYPE_1__* findElementWithHash (TYPE_2__*,char const*,unsigned int*) ;
 int insertElement (TYPE_2__*,int *,TYPE_1__*) ;
 scalar_t__ rehash (TYPE_2__*,int) ;
 int removeElementGivenHash (TYPE_2__*,TYPE_1__*,unsigned int) ;
 scalar_t__ sqlite3Malloc (int) ;
 unsigned int strHash (char const*) ;

void *sqlite3HashInsert(Hash *pH, const char *pKey, void *data){
  unsigned int h;
  HashElem *elem;
  HashElem *new_elem;

  assert( pH!=0 );
  assert( pKey!=0 );
  elem = findElementWithHash(pH,pKey,&h);
  if( elem->data ){
    void *old_data = elem->data;
    if( data==0 ){
      removeElementGivenHash(pH,elem,h);
    }else{
      elem->data = data;
      elem->pKey = pKey;
    }
    return old_data;
  }
  if( data==0 ) return 0;
  new_elem = (HashElem*)sqlite3Malloc( sizeof(HashElem) );
  if( new_elem==0 ) return data;
  new_elem->pKey = pKey;
  new_elem->data = data;
  pH->count++;
  if( pH->count>=10 && pH->count > 2*pH->htsize ){
    if( rehash(pH, pH->count*2) ){
      assert( pH->htsize>0 );
      h = strHash(pKey) % pH->htsize;
    }
  }
  insertElement(pH, pH->ht ? &pH->ht[h] : 0, new_elem);
  return 0;
}
