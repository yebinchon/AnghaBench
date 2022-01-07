
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* xOut ) (char const*,void*) ;char* zVfsName; TYPE_2__* pTraceVfs; void* pOutArg; TYPE_2__* pRootVfs; } ;
typedef TYPE_1__ vfstrace_info ;
typedef int vfstrace_file ;
struct TYPE_9__ {int iVersion; char* zName; scalar_t__ xDlOpen; scalar_t__ xDlError; scalar_t__ xDlSym; scalar_t__ xDlClose; scalar_t__ xGetLastError; scalar_t__ xCurrentTimeInt64; scalar_t__ xSetSystemCall; scalar_t__ xGetSystemCall; scalar_t__ xNextSystemCall; int xCurrentTime; int xSleep; int xRandomness; int xFullPathname; int xAccess; int xDelete; int xOpen; TYPE_1__* pAppData; int mxPathname; scalar_t__ szOsFile; } ;
typedef TYPE_2__ sqlite3_vfs ;


 int SQLITE_NOMEM ;
 int SQLITE_NOTFOUND ;
 int memcpy (char*,char const*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__* sqlite3_malloc (int) ;
 TYPE_2__* sqlite3_vfs_find (char const*) ;
 int sqlite3_vfs_register (TYPE_2__*,int) ;
 int strlen (char const*) ;
 int vfstraceAccess ;
 int vfstraceCurrentTime ;
 scalar_t__ vfstraceCurrentTimeInt64 ;
 int vfstraceDelete ;
 scalar_t__ vfstraceDlClose ;
 scalar_t__ vfstraceDlError ;
 scalar_t__ vfstraceDlOpen ;
 scalar_t__ vfstraceDlSym ;
 int vfstraceFullPathname ;
 scalar_t__ vfstraceGetLastError ;
 scalar_t__ vfstraceGetSystemCall ;
 scalar_t__ vfstraceNextSystemCall ;
 int vfstraceOpen ;
 int vfstraceRandomness ;
 scalar_t__ vfstraceSetSystemCall ;
 int vfstraceSleep ;
 int vfstrace_printf (TYPE_1__*,char*,char*,char*) ;

int vfstrace_register(
   const char *zTraceName,
   const char *zOldVfsName,
   int (*xOut)(const char*,void*),
   void *pOutArg,
   int makeDefault
){
  sqlite3_vfs *pNew;
  sqlite3_vfs *pRoot;
  vfstrace_info *pInfo;
  int nName;
  int nByte;

  pRoot = sqlite3_vfs_find(zOldVfsName);
  if( pRoot==0 ) return SQLITE_NOTFOUND;
  nName = strlen(zTraceName);
  nByte = sizeof(*pNew) + sizeof(*pInfo) + nName + 1;
  pNew = sqlite3_malloc( nByte );
  if( pNew==0 ) return SQLITE_NOMEM;
  memset(pNew, 0, nByte);
  pInfo = (vfstrace_info*)&pNew[1];
  pNew->iVersion = pRoot->iVersion;
  pNew->szOsFile = pRoot->szOsFile + sizeof(vfstrace_file);
  pNew->mxPathname = pRoot->mxPathname;
  pNew->zName = (char*)&pInfo[1];
  memcpy((char*)&pInfo[1], zTraceName, nName+1);
  pNew->pAppData = pInfo;
  pNew->xOpen = vfstraceOpen;
  pNew->xDelete = vfstraceDelete;
  pNew->xAccess = vfstraceAccess;
  pNew->xFullPathname = vfstraceFullPathname;
  pNew->xDlOpen = pRoot->xDlOpen==0 ? 0 : vfstraceDlOpen;
  pNew->xDlError = pRoot->xDlError==0 ? 0 : vfstraceDlError;
  pNew->xDlSym = pRoot->xDlSym==0 ? 0 : vfstraceDlSym;
  pNew->xDlClose = pRoot->xDlClose==0 ? 0 : vfstraceDlClose;
  pNew->xRandomness = vfstraceRandomness;
  pNew->xSleep = vfstraceSleep;
  pNew->xCurrentTime = vfstraceCurrentTime;
  pNew->xGetLastError = pRoot->xGetLastError==0 ? 0 : vfstraceGetLastError;
  if( pNew->iVersion>=2 ){
    pNew->xCurrentTimeInt64 = pRoot->xCurrentTimeInt64==0 ? 0 :
                                   vfstraceCurrentTimeInt64;
    if( pNew->iVersion>=3 ){
      pNew->xSetSystemCall = pRoot->xSetSystemCall==0 ? 0 :
                                   vfstraceSetSystemCall;
      pNew->xGetSystemCall = pRoot->xGetSystemCall==0 ? 0 :
                                   vfstraceGetSystemCall;
      pNew->xNextSystemCall = pRoot->xNextSystemCall==0 ? 0 :
                                   vfstraceNextSystemCall;
    }
  }
  pInfo->pRootVfs = pRoot;
  pInfo->xOut = xOut;
  pInfo->pOutArg = pOutArg;
  pInfo->zVfsName = pNew->zName;
  pInfo->pTraceVfs = pNew;
  vfstrace_printf(pInfo, "%s.enabled_for(\"%s\")\n",
       pInfo->zVfsName, pRoot->zName);
  return sqlite3_vfs_register(pNew, makeDefault);
}
