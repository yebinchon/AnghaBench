
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int avail_in; scalar_t__ total_out; int avail_out; int * next_out; int * next_in; } ;
typedef TYPE_1__ z_stream ;
typedef int u8 ;
typedef int str ;
typedef int sqlite3_int64 ;
typedef int Bytef ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 int Z_FINISH ;
 int Z_STREAM_END ;
 int compressBound (int) ;
 int deflate (TYPE_1__*,int ) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit2 (TYPE_1__*,int,int ,int,int,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_free (int *) ;
 scalar_t__ sqlite3_malloc64 (int ) ;
 char* sqlite3_mprintf (char*) ;

__attribute__((used)) static int zipfileDeflate(
  const u8 *aIn, int nIn,
  u8 **ppOut, int *pnOut,
  char **pzErr
){
  sqlite3_int64 nAlloc = compressBound(nIn);
  u8 *aOut;
  int rc = SQLITE_OK;

  aOut = (u8*)sqlite3_malloc64(nAlloc);
  if( aOut==0 ){
    rc = SQLITE_NOMEM;
  }else{
    int res;
    z_stream str;
    memset(&str, 0, sizeof(str));
    str.next_in = (Bytef*)aIn;
    str.avail_in = nIn;
    str.next_out = aOut;
    str.avail_out = nAlloc;

    deflateInit2(&str, 9, Z_DEFLATED, -15, 8, Z_DEFAULT_STRATEGY);
    res = deflate(&str, Z_FINISH);

    if( res==Z_STREAM_END ){
      *ppOut = aOut;
      *pnOut = (int)str.total_out;
    }else{
      sqlite3_free(aOut);
      *pzErr = sqlite3_mprintf("zipfile: deflate() error");
      rc = SQLITE_ERROR;
    }
    deflateEnd(&str);
  }

  return rc;
}
