
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iVersion; int szOsFile; int mxPathname; char* zName; int xCurrentTimeInt64; int xSleep; int xRandomness; int xFullPathname; int xAccess; int xDelete; int xOpen; } ;
typedef TYPE_1__ sqlite3_vfs ;
typedef int VHandle ;


 int inmemAccess ;
 int inmemDelete ;
 int inmemFullPathname ;
 int inmemOpen ;
 TYPE_1__* sqlite3_vfs_find (int ) ;
 int sqlite3_vfs_register (TYPE_1__*,int ) ;

__attribute__((used)) static void inmemVfsRegister(void){
  static sqlite3_vfs inmemVfs;
  sqlite3_vfs *pDefault = sqlite3_vfs_find(0);
  inmemVfs.iVersion = 3;
  inmemVfs.szOsFile = sizeof(VHandle);
  inmemVfs.mxPathname = 200;
  inmemVfs.zName = "inmem";
  inmemVfs.xOpen = inmemOpen;
  inmemVfs.xDelete = inmemDelete;
  inmemVfs.xAccess = inmemAccess;
  inmemVfs.xFullPathname = inmemFullPathname;
  inmemVfs.xRandomness = pDefault->xRandomness;
  inmemVfs.xSleep = pDefault->xSleep;
  inmemVfs.xCurrentTimeInt64 = pDefault->xCurrentTimeInt64;
  sqlite3_vfs_register(&inmemVfs, 0);
}
