
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_5__ {char* zPattern; void (* xCallback ) (char const*,scalar_t__*,scalar_t__,void*) ;void (* xDestroy ) (void*) ;void* pArg; scalar_t__ iLimit; struct TYPE_5__** ppPrev; struct TYPE_5__* pNext; } ;
typedef TYPE_1__ quotaGroup ;
struct TYPE_6__ {TYPE_1__* pGroup; } ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 TYPE_4__ gQuota ;
 int memcpy (char*,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int quotaEnter () ;
 int quotaGroupDeref (TYPE_1__*) ;
 int quotaLeave () ;
 scalar_t__ sqlite3_malloc (int) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char const*) ;
 void stub1 (void*) ;

int sqlite3_quota_set(
  const char *zPattern,
  sqlite3_int64 iLimit,
  void (*xCallback)(
     const char *zFilename,
     sqlite3_int64 *piLimit,
     sqlite3_int64 iSize,
     void *pArg
  ),
  void *pArg,
  void (*xDestroy)(void*)
){
  quotaGroup *pGroup;
  quotaEnter();
  pGroup = gQuota.pGroup;
  while( pGroup && strcmp(pGroup->zPattern, zPattern)!=0 ){
    pGroup = pGroup->pNext;
  }
  if( pGroup==0 ){
    int nPattern = (int)(strlen(zPattern) & 0x3fffffff);
    if( iLimit<=0 ){
      quotaLeave();
      return SQLITE_OK;
    }
    pGroup = (quotaGroup *)sqlite3_malloc( sizeof(*pGroup) + nPattern + 1 );
    if( pGroup==0 ){
      quotaLeave();
      return SQLITE_NOMEM;
    }
    memset(pGroup, 0, sizeof(*pGroup));
    pGroup->zPattern = (char*)&pGroup[1];
    memcpy((char *)pGroup->zPattern, zPattern, nPattern+1);
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
  quotaGroupDeref(pGroup);
  quotaLeave();
  return SQLITE_OK;
}
