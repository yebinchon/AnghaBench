
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* xAccess ) (TYPE_2__*,int ,int ,int*) ;int (* xOpen ) (TYPE_2__*,int ,int *,int,int*) ;int szOsFile; } ;
typedef TYPE_2__ sqlite3_vfs ;
typedef int sqlite3_file ;
struct TYPE_11__ {int flags; TYPE_1__* aReal; int zName; } ;
typedef TYPE_3__ multiplexGroup ;
struct TYPE_12__ {TYPE_2__* pOrigVfs; } ;
struct TYPE_9__ {int * p; int z; } ;


 int SQLITE_ACCESS_EXISTS ;
 int SQLITE_FULL ;
 int SQLITE_IOERR_NOMEM ;
 int SQLITE_MULTIPLEX_JOURNAL_8_3_OFFSET ;
 int SQLITE_OK ;
 int SQLITE_OPEN_CREATE ;
 TYPE_8__ gMultiplex ;
 int multiplexSubFilename (TYPE_3__*,int) ;
 int sqlite3_free (int *) ;
 int sqlite3_log (int,char*,int ) ;
 int * sqlite3_malloc64 (int ) ;
 int stub1 (TYPE_2__*,int ,int ,int*) ;
 int stub2 (TYPE_2__*,int ,int *,int,int*) ;

__attribute__((used)) static sqlite3_file *multiplexSubOpen(
  multiplexGroup *pGroup,
  int iChunk,
  int *rc,
  int *pOutFlags,
  int createFlag
){
  sqlite3_file *pSubOpen = 0;
  sqlite3_vfs *pOrigVfs = gMultiplex.pOrigVfs;
  *rc = multiplexSubFilename(pGroup, iChunk);
  if( (*rc)==SQLITE_OK && (pSubOpen = pGroup->aReal[iChunk].p)==0 ){
    int flags, bExists;
    flags = pGroup->flags;
    if( createFlag ){
      flags |= SQLITE_OPEN_CREATE;
    }else if( iChunk==0 ){

    }else if( pGroup->aReal[iChunk].z==0 ){
      return 0;
    }else{
      *rc = pOrigVfs->xAccess(pOrigVfs, pGroup->aReal[iChunk].z,
                              SQLITE_ACCESS_EXISTS, &bExists);
     if( *rc || !bExists ){
        if( *rc ){
          sqlite3_log(*rc, "multiplexor.xAccess failure on %s",
                      pGroup->aReal[iChunk].z);
        }
        return 0;
      }
      flags &= ~SQLITE_OPEN_CREATE;
    }
    pSubOpen = sqlite3_malloc64( pOrigVfs->szOsFile );
    if( pSubOpen==0 ){
      *rc = SQLITE_IOERR_NOMEM;
      return 0;
    }
    pGroup->aReal[iChunk].p = pSubOpen;
    *rc = pOrigVfs->xOpen(pOrigVfs, pGroup->aReal[iChunk].z, pSubOpen,
                          flags, pOutFlags);
    if( (*rc)!=SQLITE_OK ){
      sqlite3_log(*rc, "multiplexor.xOpen failure on %s",
                  pGroup->aReal[iChunk].z);
      sqlite3_free(pSubOpen);
      pGroup->aReal[iChunk].p = 0;
      return 0;
    }
  }
  return pSubOpen;
}
