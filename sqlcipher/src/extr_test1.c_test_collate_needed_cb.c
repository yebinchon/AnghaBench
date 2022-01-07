
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int ENC (int *) ;
 int SQLITE_INT_TO_PTR (int) ;
 int sqlite3_create_collation (int *,char*,int,int ,int ) ;
 int test_collate_func ;
 char* zNeededCollation ;

__attribute__((used)) static void test_collate_needed_cb(
  void *pCtx,
  sqlite3 *db,
  int eTextRep,
  const void *pName
){
  int enc = ENC(db);
  int i;
  char *z;
  for(z = (char*)pName, i=0; *z || z[1]; z++){
    if( *z ) zNeededCollation[i++] = *z;
  }
  zNeededCollation[i] = 0;
  sqlite3_create_collation(
      db, "test_collate", ENC(db), SQLITE_INT_TO_PTR(enc), test_collate_func);
}
