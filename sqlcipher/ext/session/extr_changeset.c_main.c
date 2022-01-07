
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_changeset_iter ;
typedef int sqlite3 ;
typedef int FILE ;




 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;

 int conflictCallback ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 int fwrite (void*,int,int,int *) ;
 int isalnum (char const) ;
 int nConflict ;
 int printf (char*,...) ;
 int readFile (char*,int*,void**) ;
 int renderValue (int *) ;
 int sqlite3_close (int *) ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_exec (int *,char*,int ,int ,int ) ;
 int sqlite3_free (void*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_open (char*,int **) ;
 scalar_t__ sqlite3_strglob (char*,char const*) ;
 int sqlite3changeset_apply (int *,int,void*,int ,int ,int ) ;
 int sqlite3changeset_concat (int,void*,int,void*,int*,void**) ;
 int sqlite3changeset_finalize (int *) ;
 int sqlite3changeset_invert (int,void*,int*,void**) ;
 int sqlite3changeset_new (int *,int,int **) ;
 scalar_t__ sqlite3changeset_next (int *) ;
 int sqlite3changeset_old (int *,int,int **) ;
 int sqlite3changeset_op (int *,char const**,int*,int*,int*) ;
 int sqlite3changeset_pk (int *,unsigned char**,int ) ;
 int sqlite3changeset_start (int **,int,void*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char const*) ;
 int usage (char*) ;

int main(int argc, char **argv){
  int sz, rc;
  void *pBuf = 0;
  if( argc<3 ) usage(argv[0]);
  readFile(argv[1], &sz, &pBuf);




  if( strcmp(argv[2],"apply")==0 ){
    sqlite3 *db;
    if( argc!=4 ) usage(argv[0]);
    rc = sqlite3_open(argv[3], &db);
    if( rc!=SQLITE_OK ){
      fprintf(stderr, "unable to open database file \"%s\": %s\n",
              argv[3], sqlite3_errmsg(db));
      sqlite3_close(db);
      exit(1);
    }
    sqlite3_exec(db, "BEGIN", 0, 0, 0);
    nConflict = 0;
    rc = sqlite3changeset_apply(db, sz, pBuf, 0, conflictCallback, 0);
    if( rc ){
      fprintf(stderr, "sqlite3changeset_apply() returned %d\n", rc);
    }
    if( nConflict ){
      fprintf(stderr, "%d conflicts - no changes applied\n", nConflict);
      sqlite3_exec(db, "ROLLBACK", 0, 0, 0);
    }else if( rc ){
      fprintf(stderr, "sqlite3changeset_apply() returns %d "
                      "- no changes applied\n", rc);
      sqlite3_exec(db, "ROLLBACK", 0, 0, 0);
    }else{
      sqlite3_exec(db, "COMMIT", 0, 0, 0);
    }
    sqlite3_close(db);
  }else





  if( strcmp(argv[2],"concat")==0 ){
    int szB;
    void *pB;
    int szOut;
    void *pOutBuf;
    FILE *out;
    const char *zOut = argv[4];
    if( argc!=5 ) usage(argv[0]);
    out = fopen(zOut, "wb");
    if( out==0 ){
      fprintf(stderr, "cannot open \"%s\" for writing\n", zOut);
      exit(1);
    }
    readFile(argv[3], &szB, &pB);
    rc = sqlite3changeset_concat(sz, pBuf, szB, pB, &szOut, &pOutBuf);
    if( rc!=SQLITE_OK ){
      fprintf(stderr, "sqlite3changeset_concat() returns %d\n", rc);
    }else if( szOut>0 && fwrite(pOutBuf, szOut, 1, out)!=1 ){
      fprintf(stderr, "unable to write all %d bytes of output to \"%s\"\n",
              szOut, zOut);
    }
    fclose(out);
    sqlite3_free(pOutBuf);
    sqlite3_free(pB);
  }else




  if( strcmp(argv[2],"dump")==0 ){
    int cnt = 0;
    int i;
    sqlite3_changeset_iter *pIter;
    rc = sqlite3changeset_start(&pIter, sz, pBuf);
    if( rc!=SQLITE_OK ){
      fprintf(stderr, "sqlite3changeset_start() returns %d\n", rc);
      exit(1);
    }
    while( sqlite3changeset_next(pIter)==SQLITE_ROW ){
      int op, bIndirect, nCol;
      const char *zTab;
      unsigned char *abPK;
      sqlite3changeset_op(pIter, &zTab, &nCol, &op, &bIndirect);
      cnt++;
      printf("%d: %s table=[%s] indirect=%d nColumn=%d\n",
             cnt, op==129 ? "INSERT" :
                       op==128 ? "UPDATE" : "DELETE",
             zTab, bIndirect, nCol);
      sqlite3changeset_pk(pIter, &abPK, 0);
      for(i=0; i<nCol; i++){
        sqlite3_value *pVal;
        pVal = 0;
        sqlite3changeset_old(pIter, i, &pVal);
        if( pVal ){
          printf("    old[%d]%s = ", i, abPK[i] ? "pk" : "  ");
          renderValue(pVal);
          printf("\n");
        }
        pVal = 0;
        sqlite3changeset_new(pIter, i, &pVal);
        if( pVal ){
          printf("    new[%d]%s = ", i, abPK[i] ? "pk" : "  ");
          renderValue(pVal);
          printf("\n");
        }
      }
    }
    sqlite3changeset_finalize(pIter);
  }else




  if( strcmp(argv[2],"invert")==0 ){
    FILE *out;
    int szOut = 0;
    void *pOutBuf = 0;
    const char *zOut = argv[3];
    if( argc!=4 ) usage(argv[0]);
    out = fopen(zOut, "wb");
    if( out==0 ){
      fprintf(stderr, "cannot open \"%s\" for writing\n", zOut);
      exit(1);
    }
    rc = sqlite3changeset_invert(sz, pBuf, &szOut, &pOutBuf);
    if( rc!=SQLITE_OK ){
      fprintf(stderr, "sqlite3changeset_invert() returns %d\n", rc);
    }else if( szOut>0 && fwrite(pOutBuf, szOut, 1, out)!=1 ){
      fprintf(stderr, "unable to write all %d bytes of output to \"%s\"\n",
              szOut, zOut);
    }
    fclose(out);
    sqlite3_free(pOutBuf);
  }else




  if( strcmp(argv[2],"sql")==0 ){
    int cnt = 0;
    char *zPrevTab = 0;
    char *zSQLTabName = 0;
    sqlite3_changeset_iter *pIter = 0;
    rc = sqlite3changeset_start(&pIter, sz, pBuf);
    if( rc!=SQLITE_OK ){
      fprintf(stderr, "sqlite3changeset_start() returns %d\n", rc);
      exit(1);
    }
    printf("BEGIN;\n");
    while( sqlite3changeset_next(pIter)==SQLITE_ROW ){
      int op, bIndirect, nCol;
      const char *zTab;
      sqlite3changeset_op(pIter, &zTab, &nCol, &op, &bIndirect);
      cnt++;
      if( zPrevTab==0 || strcmp(zPrevTab,zTab)!=0 ){
        sqlite3_free(zPrevTab);
        sqlite3_free(zSQLTabName);
        zPrevTab = sqlite3_mprintf("%s", zTab);
        if( !isalnum(zTab[0]) || sqlite3_strglob("*[^a-zA-Z0-9]*",zTab)==0 ){
          zSQLTabName = sqlite3_mprintf("\"%w\"", zTab);
        }else{
          zSQLTabName = sqlite3_mprintf("%s", zTab);
        }
        printf("/****** Changes for table %s ***************/\n", zSQLTabName);
      }
      switch( op ){
        case 130: {
          unsigned char *abPK;
          int i;
          const char *zSep = " ";
          sqlite3changeset_pk(pIter, &abPK, 0);
          printf("/* %d */ DELETE FROM %s WHERE", cnt, zSQLTabName);
          for(i=0; i<nCol; i++){
            sqlite3_value *pVal;
            if( abPK[i]==0 ) continue;
            printf("%sc%d=", zSep, i+1);
            zSep = " AND ";
            sqlite3changeset_old(pIter, i, &pVal);
            renderValue(pVal);
          }
          printf(";\n");
          break;
        }
        case 128: {
          unsigned char *abPK;
          int i;
          const char *zSep = " ";
          sqlite3changeset_pk(pIter, &abPK, 0);
          printf("/* %d */ UPDATE %s SET", cnt, zSQLTabName);
          for(i=0; i<nCol; i++){
            sqlite3_value *pVal = 0;
            sqlite3changeset_new(pIter, i, &pVal);
            if( pVal ){
              printf("%sc%d=", zSep, i+1);
              zSep = ", ";
              renderValue(pVal);
            }
          }
          printf(" WHERE");
          zSep = " ";
          for(i=0; i<nCol; i++){
            sqlite3_value *pVal;
            if( abPK[i]==0 ) continue;
            printf("%sc%d=", zSep, i+1);
            zSep = " AND ";
            sqlite3changeset_old(pIter, i, &pVal);
            renderValue(pVal);
          }
          printf(";\n");
          break;
        }
        case 129: {
          int i;
          printf("/* %d */ INSERT INTO %s VALUES", cnt, zSQLTabName);
          for(i=0; i<nCol; i++){
            sqlite3_value *pVal;
            printf("%c", i==0 ? '(' : ',');
            sqlite3changeset_new(pIter, i, &pVal);
            renderValue(pVal);
          }
          printf(");\n");
          break;
        }
      }
    }
    printf("COMMIT;\n");
    sqlite3changeset_finalize(pIter);
    sqlite3_free(zPrevTab);
    sqlite3_free(zSQLTabName);
  }else


  usage(argv[0]);
  sqlite3_free(pBuf);
  return 0;
}
