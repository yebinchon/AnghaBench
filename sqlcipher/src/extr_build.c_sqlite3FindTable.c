
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ authLevel; } ;
struct TYPE_11__ {int nDb; TYPE_3__* aDb; TYPE_1__ auth; } ;
typedef TYPE_4__ sqlite3 ;
typedef int Table ;
struct TYPE_10__ {int zDbSName; TYPE_2__* pSchema; } ;
struct TYPE_9__ {int tblHash; } ;


 int MASTER_NAME ;
 int OMIT_TEMPDB ;
 char* TEMP_MASTER_NAME ;
 scalar_t__ UAUTH_Admin ;
 int assert (int) ;
 scalar_t__ sqlite3BtreeHoldsAllMutexes (TYPE_4__*) ;
 int * sqlite3HashFind (int *,char const*) ;
 int sqlite3SchemaMutexHeld (TYPE_4__*,int,int ) ;
 scalar_t__ sqlite3StrICmp (char const*,int ) ;
 scalar_t__ sqlite3UserAuthTable (char const*) ;
 scalar_t__ sqlite3_stricmp (char const*,int ) ;

Table *sqlite3FindTable(sqlite3 *db, const char *zName, const char *zDatabase){
  Table *p = 0;
  int i;


  assert( zDatabase!=0 || sqlite3BtreeHoldsAllMutexes(db) );







  while(1){
    for(i=OMIT_TEMPDB; i<db->nDb; i++){
      int j = (i<2) ? i^1 : i;
      if( zDatabase==0 || sqlite3StrICmp(zDatabase, db->aDb[j].zDbSName)==0 ){
        assert( sqlite3SchemaMutexHeld(db, j, 0) );
        p = sqlite3HashFind(&db->aDb[j].pSchema->tblHash, zName);
        if( p ) return p;
      }
    }


    if( sqlite3StrICmp(zName, MASTER_NAME)!=0 ) break;
    if( sqlite3_stricmp(zDatabase, db->aDb[1].zDbSName)!=0 ) break;
    zName = TEMP_MASTER_NAME;
  }
  return 0;
}
