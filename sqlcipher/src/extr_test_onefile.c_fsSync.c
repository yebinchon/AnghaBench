
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_10__ {int nDatabase; TYPE_2__* pFile; } ;
typedef TYPE_3__ fs_real_file ;
struct TYPE_11__ {scalar_t__ eType; TYPE_3__* pReal; } ;
typedef TYPE_4__ fs_file ;
struct TYPE_8__ {int (* xWrite ) (TYPE_2__*,unsigned char*,int,int ) ;int (* xSync ) (TYPE_2__*,int) ;} ;


 scalar_t__ DATABASE_FILE ;
 int SQLITE_OK ;
 int SQLITE_SYNC_DATAONLY ;
 int stub1 (TYPE_2__*,unsigned char*,int,int ) ;
 int stub2 (TYPE_2__*,int) ;

__attribute__((used)) static int fsSync(sqlite3_file *pFile, int flags){
  fs_file *p = (fs_file *)pFile;
  fs_real_file *pReal = p->pReal;
  sqlite3_file *pRealFile = pReal->pFile;
  int rc = SQLITE_OK;

  if( p->eType==DATABASE_FILE ){
    unsigned char zSize[4];
    zSize[0] = (pReal->nDatabase&0xFF000000)>>24;
    zSize[1] = (unsigned char)((pReal->nDatabase&0x00FF0000)>>16);
    zSize[2] = (pReal->nDatabase&0x0000FF00)>>8;
    zSize[3] = (pReal->nDatabase&0x000000FF);
    rc = pRealFile->pMethods->xWrite(pRealFile, zSize, 4, 0);
  }
  if( rc==SQLITE_OK ){
    rc = pRealFile->pMethods->xSync(pRealFile, flags&(~SQLITE_SYNC_DATAONLY));
  }

  return rc;
}
