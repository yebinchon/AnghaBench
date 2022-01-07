
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int sqlite3_stmt ;
typedef int aUsed ;
struct TYPE_11__ {scalar_t__ rc; } ;
struct TYPE_10__ {int nSegment; int nLevel; TYPE_2__* aLevel; } ;
struct TYPE_9__ {int nSeg; TYPE_1__* aSeg; } ;
struct TYPE_8__ {int iSegid; } ;
typedef TYPE_3__ Fts5Structure ;
typedef TYPE_4__ Fts5Index ;


 int FTS5_MAX_SEGMENT ;
 scalar_t__ SQLITE_FULL ;
 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_STATIC ;
 int assert_nc (int) ;
 int * fts5IdxSelectStmt (TYPE_4__*) ;
 int memset (int*,int ,int) ;
 int sqlite3_bind_blob (int *,int,int*,int,int ) ;
 int sqlite3_bind_int (int *,int,int) ;
 int sqlite3_bind_null (int *,int) ;
 scalar_t__ sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int fts5AllocateSegid(Fts5Index *p, Fts5Structure *pStruct){
  int iSegid = 0;

  if( p->rc==SQLITE_OK ){
    if( pStruct->nSegment>=FTS5_MAX_SEGMENT ){
      p->rc = SQLITE_FULL;
    }else{


      u32 aUsed[(FTS5_MAX_SEGMENT+31) / 32];
      int iLvl, iSeg;
      int i;
      u32 mask;
      memset(aUsed, 0, sizeof(aUsed));
      for(iLvl=0; iLvl<pStruct->nLevel; iLvl++){
        for(iSeg=0; iSeg<pStruct->aLevel[iLvl].nSeg; iSeg++){
          int iId = pStruct->aLevel[iLvl].aSeg[iSeg].iSegid;
          if( iId<=FTS5_MAX_SEGMENT && iId>0 ){
            aUsed[(iId-1) / 32] |= (u32)1 << ((iId-1) % 32);
          }
        }
      }

      for(i=0; aUsed[i]==0xFFFFFFFF; i++);
      mask = aUsed[i];
      for(iSegid=0; mask & ((u32)1 << iSegid); iSegid++);
      iSegid += 1 + i*32;
    }
  }

  return iSegid;
}
