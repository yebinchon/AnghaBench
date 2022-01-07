
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 scalar_t__ SQLITE_ROW ;
 char** azExtra ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int listBigSegments (int *,char const*) ;
 int nExtra ;
 int * prepare (int *,char*) ;
 int printf (char*,char*) ;
 int showDoclist (int *,char const*) ;
 int showSchema (int *,char const*) ;
 int showSegdirMap (int *,char const*) ;
 int showSegment (int *,char const*) ;
 int showSegmentStats (int *,char const*) ;
 int showStat (int *,char const*) ;
 int showVocabulary (int *,char const*) ;
 char* sqlite3_column_text (int *,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_open (char*,int **) ;
 scalar_t__ sqlite3_step (int *) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 int usage (char*) ;

int main(int argc, char **argv){
  sqlite3 *db;
  int rc;
  const char *zTab;
  const char *zCmd;

  if( argc<2 ) usage(argv[0]);
  rc = sqlite3_open(argv[1], &db);
  if( rc ){
    fprintf(stderr, "Cannot open %s\n", argv[1]);
    exit(1);
  }
  if( argc==2 ){
    sqlite3_stmt *pStmt;
    int cnt = 0;
    pStmt = prepare(db, "SELECT b.sql"
                        "  FROM sqlite_master a, sqlite_master b"
                        " WHERE a.name GLOB '*_segdir'"
                        "   AND b.name=substr(a.name,1,length(a.name)-7)"
                        " ORDER BY 1");
    while( sqlite3_step(pStmt)==SQLITE_ROW ){
      cnt++;
      printf("%s;\n", sqlite3_column_text(pStmt, 0));
    }
    sqlite3_finalize(pStmt);
    if( cnt==0 ){
      printf("/* No FTS3/4 tables found in database %s */\n", argv[1]);
    }
    return 0;
  }
  if( argc<4 ) usage(argv[0]);
  zTab = argv[2];
  zCmd = argv[3];
  nExtra = argc-4;
  azExtra = argv+4;
  if( strcmp(zCmd,"big-segments")==0 ){
    listBigSegments(db, zTab);
  }else if( strcmp(zCmd,"doclist")==0 ){
    if( argc<7 ) usage(argv[0]);
    showDoclist(db, zTab);
  }else if( strcmp(zCmd,"schema")==0 ){
    showSchema(db, zTab);
  }else if( strcmp(zCmd,"segdir")==0 ){
    showSegdirMap(db, zTab);
  }else if( strcmp(zCmd,"segment")==0 ){
    if( argc<5 ) usage(argv[0]);
    showSegment(db, zTab);
  }else if( strcmp(zCmd,"segment-stats")==0 ){
    showSegmentStats(db, zTab);
  }else if( strcmp(zCmd,"stat")==0 ){
    showStat(db, zTab);
  }else if( strcmp(zCmd,"vocabulary")==0 ){
    showVocabulary(db, zTab);
  }else{
    usage(argv[0]);
  }
  return 0;
}
