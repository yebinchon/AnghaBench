
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_11__ {scalar_t__ nMaxSorterMmap; } ;
typedef TYPE_3__ sqlite3 ;
typedef scalar_t__ i64 ;
struct TYPE_9__ {int iVersion; } ;


 int SQLITE_FCNTL_CHUNK_SIZE ;
 int SQLITE_FCNTL_SIZE_HINT ;
 int sqlite3OsFetch (TYPE_2__*,int ,int,void**) ;
 int sqlite3OsFileControlHint (TYPE_2__*,int ,...) ;
 int sqlite3OsUnfetch (TYPE_2__*,int ,void*) ;

__attribute__((used)) static void vdbeSorterExtendFile(sqlite3 *db, sqlite3_file *pFd, i64 nByte){
  if( nByte<=(i64)(db->nMaxSorterMmap) && pFd->pMethods->iVersion>=3 ){
    void *p = 0;
    int chunksize = 4*1024;
    sqlite3OsFileControlHint(pFd, SQLITE_FCNTL_CHUNK_SIZE, &chunksize);
    sqlite3OsFileControlHint(pFd, SQLITE_FCNTL_SIZE_HINT, &nByte);
    sqlite3OsFetch(pFd, 0, (int)nByte, &p);
    sqlite3OsUnfetch(pFd, 0, p);
  }
}
