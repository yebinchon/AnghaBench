
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ iStructVersion; scalar_t__ rc; TYPE_3__* pStruct; } ;
struct TYPE_13__ {scalar_t__ nSegment; int nLevel; TYPE_1__* aLevel; } ;
struct TYPE_12__ {scalar_t__ iSegid; scalar_t__ pgnoFirst; scalar_t__ pgnoLast; } ;
struct TYPE_11__ {scalar_t__ nMerge; int nSeg; TYPE_2__* aSeg; } ;
typedef TYPE_2__ Fts5StructureSegment ;
typedef TYPE_3__ Fts5Structure ;
typedef TYPE_4__ Fts5Index ;


 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int assert_nc (int) ;
 scalar_t__ fts5IndexDataVersion (TYPE_4__*) ;
 void* fts5StructureReadUncached (TYPE_4__*) ;
 int fts5StructureRef (TYPE_3__*) ;
 int fts5StructureRelease (TYPE_3__*) ;

__attribute__((used)) static Fts5Structure *fts5StructureRead(Fts5Index *p){

  if( p->pStruct==0 ){
    p->iStructVersion = fts5IndexDataVersion(p);
    if( p->rc==SQLITE_OK ){
      p->pStruct = fts5StructureReadUncached(p);
    }
  }
  if( p->rc!=SQLITE_OK ) return 0;
  assert( p->iStructVersion!=0 );
  assert( p->pStruct!=0 );
  fts5StructureRef(p->pStruct);
  return p->pStruct;
}
