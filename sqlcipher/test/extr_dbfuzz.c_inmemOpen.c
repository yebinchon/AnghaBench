
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_6__ {int * pMethods; } ;
typedef TYPE_1__ sqlite3_file ;
struct TYPE_7__ {TYPE_3__* pVFile; } ;
typedef TYPE_2__ VHandle ;
struct TYPE_8__ {int nRef; } ;
typedef TYPE_3__ VFile ;


 int SQLITE_FULL ;
 int SQLITE_OK ;
 int VHandleMethods ;
 TYPE_3__* createVFile (char const*,int ) ;

__attribute__((used)) static int inmemOpen(
  sqlite3_vfs *pVfs,
  const char *zFilename,
  sqlite3_file *pFile,
  int openFlags,
  int *pOutFlags
){
  VFile *pVFile = createVFile(zFilename, 0);
  VHandle *pHandle = (VHandle*)pFile;
  if( pVFile==0 ){
    return SQLITE_FULL;
  }
  pHandle->pVFile = pVFile;
  pVFile->nRef++;
  pFile->pMethods = &VHandleMethods;
  if( pOutFlags ) *pOutFlags = openFlags;
  return SQLITE_OK;
}
