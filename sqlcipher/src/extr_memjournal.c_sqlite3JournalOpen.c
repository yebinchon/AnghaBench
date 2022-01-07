
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
typedef int sqlite3_io_methods ;
typedef int sqlite3_file ;
struct TYPE_3__ {int nChunkSize; int nSpill; int flags; char const* zJournal; int * pVfs; int const* pMethod; } ;
typedef TYPE_1__ MemJournal ;
typedef int FileChunk ;


 int MEMJOURNAL_DFLT_FILECHUNKSIZE ;
 int MemJournalMethods ;
 int SQLITE_OK ;
 int assert (int) ;
 int fileChunkSize (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3OsOpen (int *,char const*,int *,int,int ) ;

int sqlite3JournalOpen(
  sqlite3_vfs *pVfs,
  const char *zName,
  sqlite3_file *pJfd,
  int flags,
  int nSpill
){
  MemJournal *p = (MemJournal*)pJfd;





  memset(p, 0, sizeof(MemJournal));
  if( nSpill==0 ){
    return sqlite3OsOpen(pVfs, zName, pJfd, flags, 0);
  }

  if( nSpill>0 ){
    p->nChunkSize = nSpill;
  }else{
    p->nChunkSize = 8 + MEMJOURNAL_DFLT_FILECHUNKSIZE - sizeof(FileChunk);
    assert( MEMJOURNAL_DFLT_FILECHUNKSIZE==fileChunkSize(p->nChunkSize) );
  }

  p->pMethod = (const sqlite3_io_methods*)&MemJournalMethods;
  p->nSpill = nSpill;
  p->flags = flags;
  p->zJournal = zName;
  p->pVfs = pVfs;
  return SQLITE_OK;
}
