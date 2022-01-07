
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_vtab ;
typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3 ;
struct TYPE_3__ {char* zFile; int * aBuffer; int * db; } ;
typedef TYPE_1__ ZipfileTab ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int ZIPFILE_BUFFER_SIZE ;
 int ZIPFILE_SCHEMA ;
 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_declare_vtab (int *,int ) ;
 scalar_t__ sqlite3_malloc64 (scalar_t__) ;
 char* sqlite3_mprintf (char*) ;
 scalar_t__ sqlite3_stricmp (char const* const,char*) ;
 scalar_t__ strlen (char const*) ;
 int zipfileDequote (char*) ;

__attribute__((used)) static int zipfileConnect(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  int nByte = sizeof(ZipfileTab) + ZIPFILE_BUFFER_SIZE;
  int nFile = 0;
  const char *zFile = 0;
  ZipfileTab *pNew = 0;
  int rc;
  assert( 0==sqlite3_stricmp(argv[0], "zipfile") );
  if( (0!=sqlite3_stricmp(argv[2], "zipfile") && argc<4) || argc>4 ){
    *pzErr = sqlite3_mprintf("zipfile constructor requires one argument");
    return SQLITE_ERROR;
  }

  if( argc>3 ){
    zFile = argv[3];
    nFile = (int)strlen(zFile)+1;
  }

  rc = sqlite3_declare_vtab(db, ZIPFILE_SCHEMA);
  if( rc==SQLITE_OK ){
    pNew = (ZipfileTab*)sqlite3_malloc64((sqlite3_int64)nByte+nFile);
    if( pNew==0 ) return SQLITE_NOMEM;
    memset(pNew, 0, nByte+nFile);
    pNew->db = db;
    pNew->aBuffer = (u8*)&pNew[1];
    if( zFile ){
      pNew->zFile = (char*)&pNew->aBuffer[ZIPFILE_BUFFER_SIZE];
      memcpy(pNew->zFile, zFile, nFile);
      zipfileDequote(pNew->zFile);
    }
  }
  *ppVtab = (sqlite3_vtab*)pNew;
  return rc;
}
