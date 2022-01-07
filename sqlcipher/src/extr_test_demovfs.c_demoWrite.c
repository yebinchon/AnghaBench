
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3_file ;
struct TYPE_4__ {scalar_t__ nBuffer; scalar_t__ iBufferOfst; int * aBuffer; } ;
typedef TYPE_1__ DemoFile ;


 scalar_t__ SQLITE_DEMOVFS_BUFFERSZ ;
 int SQLITE_OK ;
 int assert (int) ;
 int demoDirectWrite (TYPE_1__*,void const*,int,scalar_t__) ;
 int demoFlushBuffer (TYPE_1__*) ;
 int memcpy (int *,char*,int) ;

__attribute__((used)) static int demoWrite(
  sqlite3_file *pFile,
  const void *zBuf,
  int iAmt,
  sqlite_int64 iOfst
){
  DemoFile *p = (DemoFile*)pFile;

  if( p->aBuffer ){
    char *z = (char *)zBuf;
    int n = iAmt;
    sqlite3_int64 i = iOfst;

    while( n>0 ){
      int nCopy;





      if( p->nBuffer==SQLITE_DEMOVFS_BUFFERSZ || p->iBufferOfst+p->nBuffer!=i ){
        int rc = demoFlushBuffer(p);
        if( rc!=SQLITE_OK ){
          return rc;
        }
      }
      assert( p->nBuffer==0 || p->iBufferOfst+p->nBuffer==i );
      p->iBufferOfst = i - p->nBuffer;


      nCopy = SQLITE_DEMOVFS_BUFFERSZ - p->nBuffer;
      if( nCopy>n ){
        nCopy = n;
      }
      memcpy(&p->aBuffer[p->nBuffer], z, nCopy);
      p->nBuffer += nCopy;

      n -= nCopy;
      i += nCopy;
      z += nCopy;
    }
  }else{
    return demoDirectWrite(p, zBuf, iAmt, iOfst);
  }

  return SQLITE_OK;
}
