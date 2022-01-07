
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_module ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memcpy (int *,int const*,int) ;
 int * sqlite3_malloc (int) ;

__attribute__((used)) static int vtshimCopyModule(
  const sqlite3_module *pMod,
  sqlite3_module **ppMod
){
  sqlite3_module *p;
  if( !pMod || !ppMod ) return SQLITE_ERROR;
  p = sqlite3_malloc( sizeof(*p) );
  if( p==0 ) return SQLITE_NOMEM;
  memcpy(p, pMod, sizeof(*p));
  *ppMod = p;
  return SQLITE_OK;
}
