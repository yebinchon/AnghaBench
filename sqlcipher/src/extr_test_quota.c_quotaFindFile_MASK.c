#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* pFiles; } ;
typedef  TYPE_1__ quotaGroup ;
struct TYPE_7__ {char* zFilename; TYPE_1__* pGroup; struct TYPE_7__** ppPrev; struct TYPE_7__* pNext; } ;
typedef  TYPE_2__ quotaFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static quotaFile *FUNC5(
  quotaGroup *pGroup,     /* Group in which to look for the file */
  const char *zName,      /* Full pathname of the file */
  int createFlag          /* Try to create the file if not found */
){
  quotaFile *pFile = pGroup->pFiles;
  while( pFile && FUNC3(pFile->zFilename, zName)!=0 ){
    pFile = pFile->pNext;
  }
  if( pFile==0 && createFlag ){
    int nName = (int)(FUNC4(zName) & 0x3fffffff);
    pFile = (quotaFile *)FUNC2( sizeof(*pFile) + nName + 1 );
    if( pFile ){
      FUNC1(pFile, 0, sizeof(*pFile));
      pFile->zFilename = (char*)&pFile[1];
      FUNC0(pFile->zFilename, zName, nName+1);
      pFile->pNext = pGroup->pFiles;
      if( pGroup->pFiles ) pGroup->pFiles->ppPrev = &pFile->pNext;
      pFile->ppPrev = &pGroup->pFiles;
      pGroup->pFiles = pFile;
      pFile->pGroup = pGroup;
    }
  }
  return pFile;
}