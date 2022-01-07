
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memcpy (char*,char const* const,int) ;
 int sqlite3Fts3Dequote (char*) ;
 char** sqlite3_malloc64 (int) ;
 scalar_t__ strlen (char const* const) ;

__attribute__((used)) static int fts3tokDequoteArray(
  int argc,
  const char * const *argv,
  char ***pazDequote
){
  int rc = SQLITE_OK;
  if( argc==0 ){
    *pazDequote = 0;
  }else{
    int i;
    int nByte = 0;
    char **azDequote;

    for(i=0; i<argc; i++){
      nByte += (int)(strlen(argv[i]) + 1);
    }

    *pazDequote = azDequote = sqlite3_malloc64(sizeof(char *)*argc + nByte);
    if( azDequote==0 ){
      rc = SQLITE_NOMEM;
    }else{
      char *pSpace = (char *)&azDequote[argc];
      for(i=0; i<argc; i++){
        int n = (int)strlen(argv[i]);
        azDequote[i] = pSpace;
        memcpy(pSpace, argv[i], n+1);
        sqlite3Fts3Dequote(pSpace);
        pSpace += (n+1);
      }
    }
  }

  return rc;
}
