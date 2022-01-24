#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int count; int htsize; int /*<<< orphan*/ * ht; } ;
struct TYPE_11__ {char const* pKey; void* data; } ;
typedef  TYPE_1__ HashElem ;
typedef  TYPE_2__ Hash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC5 (int) ; 
 unsigned int FUNC6 (char const*) ; 

void *FUNC7(Hash *pH, const char *pKey, void *data){
  unsigned int h;       /* the hash of the key modulo hash table size */
  HashElem *elem;       /* Used to loop thru the element list */
  HashElem *new_elem;   /* New element added to the pH */

  FUNC0( pH!=0 );
  FUNC0( pKey!=0 );
  elem = FUNC1(pH,pKey,&h);
  if( elem->data ){
    void *old_data = elem->data;
    if( data==0 ){
      FUNC4(pH,elem,h);
    }else{
      elem->data = data;
      elem->pKey = pKey;
    }
    return old_data;
  }
  if( data==0 ) return 0;
  new_elem = (HashElem*)FUNC5( sizeof(HashElem) );
  if( new_elem==0 ) return data;
  new_elem->pKey = pKey;
  new_elem->data = data;
  pH->count++;
  if( pH->count>=10 && pH->count > 2*pH->htsize ){
    if( FUNC3(pH, pH->count*2) ){
      FUNC0( pH->htsize>0 );
      h = FUNC6(pKey) % pH->htsize;
    }
  }
  FUNC2(pH, pH->ht ? &pH->ht[h] : 0, new_elem);
  return 0;
}