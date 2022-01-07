
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int nNode; int oom; int * aUp; } ;
typedef TYPE_1__ JsonParse ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int jsonParseFillInParentage (TYPE_1__*,int ,int ) ;
 int * sqlite3_malloc64 (int) ;

__attribute__((used)) static int jsonParseFindParents(JsonParse *pParse){
  u32 *aUp;
  assert( pParse->aUp==0 );
  aUp = pParse->aUp = sqlite3_malloc64( sizeof(u32)*pParse->nNode );
  if( aUp==0 ){
    pParse->oom = 1;
    return SQLITE_NOMEM;
  }
  jsonParseFillInParentage(pParse, 0, 0);
  return SQLITE_OK;
}
