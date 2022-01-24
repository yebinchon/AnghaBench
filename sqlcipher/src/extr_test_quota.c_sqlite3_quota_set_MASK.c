#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_5__ {char* zPattern; void (* xCallback ) (char const*,scalar_t__*,scalar_t__,void*) ;void (* xDestroy ) (void*) ;void* pArg; scalar_t__ iLimit; struct TYPE_5__** ppPrev; struct TYPE_5__* pNext; } ;
typedef  TYPE_1__ quotaGroup ;
struct TYPE_6__ {TYPE_1__* pGroup; } ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 TYPE_4__ gQuota ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 
 int FUNC7 (char const*) ; 
 void FUNC8 (void*) ; 

int FUNC9(
  const char *zPattern,           /* The filename pattern */
  sqlite3_int64 iLimit,           /* New quota to set for this quota group */
  void (*xCallback)(              /* Callback invoked when going over quota */
     const char *zFilename,         /* Name of file whose size increases */
     sqlite3_int64 *piLimit,        /* IN/OUT: The current limit */
     sqlite3_int64 iSize,           /* Total size of all files in the group */
     void *pArg                     /* Client data */
  ),
  void *pArg,                     /* client data passed thru to callback */
  void (*xDestroy)(void*)         /* Optional destructor for pArg */
){
  quotaGroup *pGroup;
  FUNC2();
  pGroup = gQuota.pGroup;
  while( pGroup && FUNC6(pGroup->zPattern, zPattern)!=0 ){
    pGroup = pGroup->pNext;
  }
  if( pGroup==0 ){
    int nPattern = (int)(FUNC7(zPattern) & 0x3fffffff);
    if( iLimit<=0 ){
      FUNC4();
      return SQLITE_OK;
    }
    pGroup = (quotaGroup *)FUNC5( sizeof(*pGroup) + nPattern + 1 );
    if( pGroup==0 ){
      FUNC4();
      return SQLITE_NOMEM;
    }
    FUNC1(pGroup, 0, sizeof(*pGroup));
    pGroup->zPattern = (char*)&pGroup[1];
    FUNC0((char *)pGroup->zPattern, zPattern, nPattern+1);
    if( gQuota.pGroup ) gQuota.pGroup->ppPrev = &pGroup->pNext;
    pGroup->pNext = gQuota.pGroup;
    pGroup->ppPrev = &gQuota.pGroup;
    gQuota.pGroup = pGroup;
  }
  pGroup->iLimit = iLimit;
  pGroup->xCallback = xCallback;
  if( pGroup->xDestroy && pGroup->pArg!=pArg ){
    pGroup->xDestroy(pGroup->pArg);
  }
  pGroup->pArg = pArg;
  pGroup->xDestroy = xDestroy;
  FUNC3(pGroup);
  FUNC4();
  return SQLITE_OK;
}