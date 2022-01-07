
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int aModule; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_7__ {int mPragFlg; } ;
typedef TYPE_2__ PragmaName ;
typedef int Module ;


 int PragFlg_Result0 ;
 int PragFlg_Result1 ;
 int assert (int) ;
 TYPE_2__* pragmaLocate (char const*) ;
 int pragmaVtabModule ;
 scalar_t__ sqlite3HashFind (int *,char const*) ;
 int * sqlite3VtabCreateModule (TYPE_1__*,char const*,int *,void*,int ) ;
 scalar_t__ sqlite3_strnicmp (char const*,char*,int) ;

Module *sqlite3PragmaVtabRegister(sqlite3 *db, const char *zName){
  const PragmaName *pName;
  assert( sqlite3_strnicmp(zName, "pragma_", 7)==0 );
  pName = pragmaLocate(zName+7);
  if( pName==0 ) return 0;
  if( (pName->mPragFlg & (PragFlg_Result0|PragFlg_Result1))==0 ) return 0;
  assert( sqlite3HashFind(&db->aModule, zName)==0 );
  return sqlite3VtabCreateModule(db, zName, &pragmaVtabModule, (void*)pName, 0);
}
