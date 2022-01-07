
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_6__ {scalar_t__ bRaw; int dbfd; TYPE_2__* pFd; } ;
struct TYPE_5__ {TYPE_1__* pMethods; } ;
struct TYPE_4__ {int (* xRead ) (TYPE_2__*,void*,int,scalar_t__) ;} ;


 int SEEK_SET ;
 int SQLITE_IOERR_SHORT_READ ;
 int SQLITE_OK ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 TYPE_3__ g ;
 int lseek (int ,long,int ) ;
 int memset (unsigned char*,int ,int) ;
 int out_of_memory () ;
 int read (int ,unsigned char*,int) ;
 unsigned char* sqlite3_malloc (int) ;
 int stderr ;
 int stub1 (TYPE_2__*,void*,int,scalar_t__) ;

__attribute__((used)) static unsigned char *fileRead(sqlite3_int64 ofst, int nByte){
  unsigned char *aData;
  int got;
  aData = sqlite3_malloc(nByte+32);
  if( aData==0 ) out_of_memory();
  memset(aData, 0, nByte+32);
  if( g.bRaw==0 ){
    int rc = g.pFd->pMethods->xRead(g.pFd, (void*)aData, nByte, ofst);
    if( rc!=SQLITE_OK && rc!=SQLITE_IOERR_SHORT_READ ){
      fprintf(stderr, "error in xRead() - %d\n", rc);
      exit(1);
    }
  }else{
    lseek(g.dbfd, (long)ofst, SEEK_SET);
    got = read(g.dbfd, aData, nByte);
    if( got>0 && got<nByte ) memset(aData+got, 0, nByte-got);
  }
  return aData;
}
