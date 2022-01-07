
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pFiles; } ;
typedef TYPE_1__ quotaGroup ;
struct TYPE_7__ {char* zFilename; TYPE_1__* pGroup; struct TYPE_7__** ppPrev; struct TYPE_7__* pNext; } ;
typedef TYPE_2__ quotaFile ;


 int memcpy (char*,char const*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ sqlite3_malloc (int) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static quotaFile *quotaFindFile(
  quotaGroup *pGroup,
  const char *zName,
  int createFlag
){
  quotaFile *pFile = pGroup->pFiles;
  while( pFile && strcmp(pFile->zFilename, zName)!=0 ){
    pFile = pFile->pNext;
  }
  if( pFile==0 && createFlag ){
    int nName = (int)(strlen(zName) & 0x3fffffff);
    pFile = (quotaFile *)sqlite3_malloc( sizeof(*pFile) + nName + 1 );
    if( pFile ){
      memset(pFile, 0, sizeof(*pFile));
      pFile->zFilename = (char*)&pFile[1];
      memcpy(pFile->zFilename, zName, nName+1);
      pFile->pNext = pGroup->pFiles;
      if( pGroup->pFiles ) pGroup->pFiles->ppPrev = &pFile->pNext;
      pFile->ppPrev = &pGroup->pFiles;
      pGroup->pFiles = pFile;
      pFile->pGroup = pGroup;
    }
  }
  return pFile;
}
