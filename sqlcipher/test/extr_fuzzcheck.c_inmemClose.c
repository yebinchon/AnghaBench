
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_3__ {TYPE_2__* pVFile; } ;
typedef TYPE_1__ VHandle ;
struct TYPE_4__ {scalar_t__ nRef; scalar_t__ zFilename; int sz; scalar_t__ a; } ;
typedef TYPE_2__ VFile ;


 int SQLITE_OK ;
 int free (scalar_t__) ;

__attribute__((used)) static int inmemClose(sqlite3_file *pFile){
  VHandle *p = (VHandle*)pFile;
  VFile *pVFile = p->pVFile;
  pVFile->nRef--;
  if( pVFile->nRef==0 && pVFile->zFilename==0 ){
    pVFile->sz = -1;
    free(pVFile->a);
    pVFile->a = 0;
  }
  return SQLITE_OK;
}
