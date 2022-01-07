
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* zDb; char* zName; size_t nColumn; char** azColumn; char** azContentColumn; int azTokenizer; } ;
typedef TYPE_1__ TableSpec ;


 int CLEAR (TYPE_1__*) ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int clearTableSpec (TYPE_1__*) ;
 char* firstToken (char*,char**) ;
 int safe_isalnum (char) ;
 void* sqlite3_malloc (int) ;
 char* sqlite3_mprintf (char*,int,char*) ;
 scalar_t__ startsWith (char*,char*) ;
 int strcpy (char*,char const* const) ;
 scalar_t__ strlen (char const* const) ;
 int tokenListToIdList (int ) ;
 int tokenizeString (char const*,int*) ;

__attribute__((used)) static int parseSpec(TableSpec *pSpec, int argc, const char *const*argv,
                     char**pzErr){
  int i, n;
  char *z, *zDummy;
  char **azArg;
  const char *zTokenizer = 0;

  assert( argc>=3 );
  CLEAR(pSpec);
  for(i=n=0; i<argc; i++){
    n += strlen(argv[i]) + 1;
  }
  azArg = sqlite3_malloc( sizeof(char*)*argc + n );
  if( azArg==0 ){
    return SQLITE_NOMEM;
  }
  z = (char*)&azArg[argc];
  for(i=0; i<argc; i++){
    azArg[i] = z;
    strcpy(z, argv[i]);
    z += strlen(z)+1;
  }




  pSpec->zDb = azArg[1];
  pSpec->zName = azArg[2];
  pSpec->nColumn = 0;
  pSpec->azColumn = azArg;
  zTokenizer = "tokenize simple";
  for(i=3; i<argc; ++i){
    if( startsWith(azArg[i],"tokenize") ){
      zTokenizer = azArg[i];
    }else{
      z = azArg[pSpec->nColumn] = firstToken(azArg[i], &zDummy);
      pSpec->nColumn++;
    }
  }
  if( pSpec->nColumn==0 ){
    azArg[0] = "content";
    pSpec->nColumn = 1;
  }
  pSpec->azContentColumn = sqlite3_malloc( pSpec->nColumn * sizeof(char *) );
  if( pSpec->azContentColumn==0 ){
    clearTableSpec(pSpec);
    return SQLITE_NOMEM;
  }
  for(i=0; i<pSpec->nColumn; i++){
    char *p;
    pSpec->azContentColumn[i] = sqlite3_mprintf("c%d%s", i, azArg[i]);
    for (p = pSpec->azContentColumn[i]; *p ; ++p) {
      if( !safe_isalnum(*p) ) *p = '_';
    }
  }




  pSpec->azTokenizer = tokenizeString(zTokenizer, &n);
  tokenListToIdList(pSpec->azTokenizer);

  return SQLITE_OK;
}
