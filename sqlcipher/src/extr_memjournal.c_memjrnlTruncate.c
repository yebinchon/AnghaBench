
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int sqlite3_file ;
struct TYPE_5__ {scalar_t__ iOffset; scalar_t__ pChunk; } ;
struct TYPE_6__ {scalar_t__ iOffset; scalar_t__ pChunk; } ;
struct TYPE_7__ {TYPE_1__ readpoint; TYPE_2__ endpoint; scalar_t__ nSize; } ;
typedef TYPE_3__ MemJournal ;


 scalar_t__ ALWAYS (int) ;
 int SQLITE_OK ;
 int memjrnlFreeChunks (TYPE_3__*) ;

__attribute__((used)) static int memjrnlTruncate(sqlite3_file *pJfd, sqlite_int64 size){
  MemJournal *p = (MemJournal *)pJfd;
  if( ALWAYS(size==0) ){
    memjrnlFreeChunks(p);
    p->nSize = 0;
    p->endpoint.pChunk = 0;
    p->endpoint.iOffset = 0;
    p->readpoint.pChunk = 0;
    p->readpoint.iOffset = 0;
  }
  return SQLITE_OK;
}
