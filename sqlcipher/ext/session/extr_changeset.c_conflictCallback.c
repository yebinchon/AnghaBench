
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_changeset_iter ;







 int SQLITE_CHANGESET_OMIT ;



 int nConflict ;
 int printf (char*,...) ;
 int renderValue (int *) ;
 int sqlite3changeset_new (int *,int,int **) ;
 int sqlite3changeset_old (int *,int,int **) ;
 int sqlite3changeset_op (int *,char const**,int*,int*,int*) ;
 int sqlite3changeset_pk (int *,unsigned char**,int ) ;

__attribute__((used)) static int conflictCallback(
  void *pCtx,
  int eConflict,
  sqlite3_changeset_iter *pIter
){
  int op, bIndirect, nCol, i;
  const char *zTab;
  unsigned char *abPK;
  const char *zType = "";
  const char *zOp = "";
  const char *zSep = " ";

  nConflict++;
  sqlite3changeset_op(pIter, &zTab, &nCol, &op, &bIndirect);
  sqlite3changeset_pk(pIter, &abPK, 0);
  switch( eConflict ){
    case 133: zType = "DATA"; break;
    case 131: zType = "NOTFOUND"; break;
    case 135: zType = "PRIMARY KEY"; break;
    case 132: zType = "FOREIGN KEY"; break;
    case 134: zType = "CONSTRAINT"; break;
  }
  switch( op ){
    case 128: zOp = "UPDATE of"; break;
    case 129: zOp = "INSERT into"; break;
    case 130: zOp = "DELETE from"; break;
  }
  printf("%s conflict on %s table %s with primary key", zType, zOp, zTab);
  for(i=0; i<nCol; i++){
    sqlite3_value *pVal;
    if( abPK[i]==0 ) continue;
    printf("%s", zSep);
    if( op==129 ){
      sqlite3changeset_new(pIter, i, &pVal);
    }else{
      sqlite3changeset_old(pIter, i, &pVal);
    }
    renderValue(pVal);
    zSep = ",";
  }
  printf("\n");
  return SQLITE_CHANGESET_OMIT;
}
