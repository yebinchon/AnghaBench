
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MX_CHUNK_NUMBER ;
 scalar_t__ SQLITE_MULTIPLEX_JOURNAL_8_3_OFFSET ;
 scalar_t__ SQLITE_MULTIPLEX_WAL_8_3_OFFSET ;
 int SQLITE_OPEN_MAIN_JOURNAL ;
 int SQLITE_OPEN_WAL ;
 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 int sqlite3_snprintf (int,char*,char*,int) ;

__attribute__((used)) static void multiplexFilename(
  const char *zBase,
  int nBase,
  int flags,
  int iChunk,
  char *zOut
){
  int n = nBase;
  memcpy(zOut, zBase, n+1);
  if( iChunk!=0 && iChunk<=MX_CHUNK_NUMBER ){
    sqlite3_snprintf(4,&zOut[n],"%03d",iChunk);
    n += 3;
  }

  assert( zOut[n]=='\0' );
  zOut[n+1] = '\0';
}
